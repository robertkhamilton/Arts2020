// name: granular.ck
// authors:
//     original: Kyle Spratt (Spring 2008, Stanford Laptop Orchestra)
//     modified: Baek San Chang (Spring 2008)
//     modified: Rob Hamilton (Spring 2009)
//     modified: Ge Wang (Spring 2009)

// get input to which channel to send sound
me.arg(0) => Std.atoi => int channel;

// check args
if( me.args() < 2 )
{
    <<< "missing argument: [filename]", "" >>>;
    <<< "usage: chuck granular:[chan]:[filename]:[print]", "" >>>;
    me.exit();
}

// instantiate hid message
Hid hi;
HidMsg msg;

// which keyboard
1 => int device;

// open keyboard (get device number from command line)
if( !hi.openKeyboard( device ) ) me.exit();
<<< "keyboard '" + hi.name() + "' ready", "" >>>;

// the patch
SndBuf buf => Envelope e => dac.chan(channel);

// set up what to read
me.arg( 1 ) => buf.read;

// variables and initial values
80 => float grain_duration; 
5.0 => float rand_grain_duration;
1 => int position; 
1.0 => float pitch;
0 => int rand_position;
0.0 => float rand_pitch;
0.0 => float pause;

// targets for ramping
float position_target;
1.0 => float pitch_target;
0.0 => float gain_target => buf.gain;

// number of samples in the buffer
int samples;
buf.samples() => samples;
grain_duration*0.5::ms => e.duration;

// main grain function
fun void grain()
{ 
    // can be changed to acheive a more varying
    // asynchronous envelope for each grain duration
    0.0 => float grain_length;

    // go!
    while( true )
    {
        // compute grain length
        Std.rand2f( Math.max(1.0,grain_duration-rand_grain_duration),
                    grain_duration + rand_grain_duration) => grain_length;
        // compute grain duration for envelope
        grain_length*0.5::ms => e.duration;
        // set buffer playback rate
        Std.rand2f( Math.max(0.0625, pitch-rand_pitch), pitch+rand_pitch ) => buf.rate;
        // set buffer position
        Std.rand2( Math.max(1,position-rand_position) $ int,
                   Math.min(samples,position+rand_position) $ int ) => buf.pos;

        // enable envelope
        e.keyOn();
        // wait for rise
        grain_length*0.5::ms => now;
        // close envelope
        e.keyOff();
        // wait
        grain_length*0.5::ms => now;

        // until next grain
        pause::ms => now;
    }
}

// position interpolation
fun void ramp_position()
{
    // compute rough threshold
    2.0 * (samples) $ float / 10.0 => float thresh;
    // choose slew
    0.005 => float slew;

    // go
    while( true )
    {
        // really far away from target?
        if( Std.fabs(position - position_target) > samples / 5 )
        {
            1.0 => slew;
        }
        else
        {
            0.005 => slew;
        }

        // slew towards position
        ( (position_target - position) * slew + position ) $ int => position;

        // wait time
        1::ms => now;
    }
}

// pitch interpolation
fun void ramp_pitch()
{
    // the slew
    0.005 => float slew;
    // go
    while( true )
    {
        // slew
        ((pitch_target - pitch) * slew + pitch) => pitch;
        // wait
        5::ms => now;
    }
}

// volume interpolation
fun void ramp_gain()
{   
    // the slew
    0.05 => float slew;
    // go
    while( true )
    {
        // slew
        ( (gain_target - buf.gain()) * slew + buf.gain() ) => buf.gain;
        // wait
        10::ms => now;
    }
}

// spork
spork ~ grain();
spork ~ ramp_position();
spork ~ ramp_pitch();
spork ~ ramp_gain();

// set gain
0.0 => float temp_gain;
// set print flag
me.arg(2) => Std.atoi => int print;
<<< "print: ", print >>>;

// infinite event loop
while( true )
{
    // wait on event
    hi => now;
    
    // get one or more messages
    while( hi.recv( msg ) )
    {
        // check for action type
        if( msg.isButtonDown() )
        {
            if( print) <<< "down:", msg.which, "(code)", msg.key, "(usb key)", msg.ascii, "(ascii)" >>>;
            
            if( msg.ascii < 58 && msg.ascii > 47 )
            {
                (msg.ascii - 48)*samples/(10) => position_target;
                if( print ) <<< "position: ", position_target >>>;
            }
            else if( msg.ascii == 61 )
            {
                Math.min(samples, position + 11025) => position_target;
                if( print ) <<< "position: ", position_target >>>;
            }
            else if( msg.ascii == 45 )
            {
                Math.max(1, position - 11025) => position_target;
                if( print ) <<< "position: ", position_target >>>;
            }
            
			// gain (up arrow)
            else if( msg.which == 82 )
            {
                    // 0.05 + gain_target => temp_gain;
                    if( gain_target <= .05 ) {
                        0.05 + gain_target => temp_gain;
                    } else {
                        gain_target*1.1 => temp_gain;
                    }

                    Math.min( 6.0, temp_gain ) => temp_gain;
					temp_gain => gain_target;
					if( print ) <<< "gain: ", buf.gain() >>>;
            }
            else if( msg.which == 81 ) // (down arrow)
            {
                    // gain_target - 0.05 => temp_gain;
                    if( gain_target <= .05 ) {
                        0.0 => temp_gain;
                    } else {
                        gain_target/1.1 => temp_gain;
                    }
                    
                    Math.max( 0.0, temp_gain ) => temp_gain;	
                    temp_gain => gain_target;
                    if( print ) <<< "gain: ", buf.gain() >>>;
            }
            
			// grain duration (right arrow)
            else if( msg.which == 79 )
            {
                // Math.min(1000.0, (grain_duration + 10.0)) => grain_duration;
                Math.min(5000.0, (grain_duration * 1.06)) => grain_duration;                                    
                grain_duration * 0.5::ms => e.duration;
                if( print ) <<< "grain length: ", grain_duration >>>;
            }
            else if( msg.which == 80 ) // (left arrow)
            {
                // Math.max(1.0, (grain_duration - 10.0)) => grain_duration; // changed in 2 places (REMEMBER!!!)
                Math.max(1.0, (grain_duration/1.06)) => grain_duration;                                    
                grain_duration*0.5::ms => e.duration;
                if( print ) <<< "grain length: ", grain_duration >>>;
            }
            
            // rand grain duration
            else if( msg.ascii == 0 )
            {
                Math.max(0.01, (rand_grain_duration / 1.3)) => rand_grain_duration;
                if( rand_grain_duration <= 0.01 ) 0.01 => rand_grain_duration;
                if( print ) <<< "- randomness grain length: ", rand_grain_duration >>>;
            }
            else if( msg.ascii == 10 ) // (return)
            {
                if( rand_grain_duration <= 0.01 ) 0.01 => rand_grain_duration;
                Math.min(2000.0, (rand_grain_duration * 1.3)) => rand_grain_duration;
                if( print ) <<< "+ randomness grain length: ", rand_grain_duration >>>;
            }

			// rand position
            else if( msg.ascii == 91 )
            {
                (Math.max(0.0, rand_position - 500.0)) $ int => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 93 )
            {
                (Math.min(samples, rand_position + 500)) $ int => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 81 )
            {
                0 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 87 )
            {
                200 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 69 )
            {
                2000 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 82 )
            {
                20000 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 84 )
            {
                40000 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 89 )
            {
                80000 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 85 )
            {
                100000 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 73 )
            {
                samples * 7 / 9 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 79 )
            {
                samples * 8 / 9 => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            else if( msg.ascii == 80 )
            {
                samples => rand_position;
                if( print ) <<< "randomness of position: ", rand_position >>>;
            }
            // pitch target
            else if( msg.ascii == 71 )
            {
                1.0 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 70 )
            {
                0.75 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 68 )
            {
                0.5 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 83 )
            {
                0.25 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 65 )
            {
                0.125 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 72 )
            {
                2.0 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 74 )
            {
                4.0 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 75 )
            {
                8.0 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 76 )
            {
                16.0 => pitch_target;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            
			// pitch
            else if( msg.ascii == 59 )
            {
                pitch - .05 / 12 => pitch_target => pitch;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }
            else if( msg.ascii == 39 )
            {
                pitch + .05 / 12 => pitch_target => pitch;
                if( print ) <<< "pitch: ", pitch_target >>>;
            }

			// rand pitch
            else if( msg.ascii == 44 )
            {
                rand_pitch - 0.25 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 46 )
            {
                rand_pitch + 0.25 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 90 )
            {
                0.0 => rand_pitch;          
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 88 )
            {
                1.0 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 67 )
            {
                2.0 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 86 )
            {
                3.0 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 66 )
            {
                4.0 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 78 )
            {
                5.0 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }
            else if( msg.ascii == 77 )
            {
                6.0 => rand_pitch;
                if( print ) <<< "randomness of pitch: ", rand_pitch >>>;
            }

            // done
            else if( msg.ascii == 27 )
            {
                <<< "go do some work!", "" >>>;
                me.exit();
            }
        }
        else
        {
            //<<< "up:", msg.which, "(code)", msg.key, "(usb key)", msg.ascii, "(ascii)" >>>;
        }

		// extra buffer
        1::ms => now;
    }
}
