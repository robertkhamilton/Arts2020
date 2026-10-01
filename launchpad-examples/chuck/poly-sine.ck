// OG authors: Ananya Misra and Ge Wang
// modified: everett m. carpenter

// device to open (see: chuck --probe)
0 => int device;
// get from command line
if( me.args() ) me.arg(0) => Std.atoi => device;

MidiIn min;
MidiMsg msg;

// try to open MIDI port (see chuck --probe for available devices)
if( !min.open( device ) ) me.exit();

// print out device that was opened
<<< "MIDI device:", min.num(), " -> ", min.name() >>>;

// make our own event
class NoteEvent extends Event
{
    int note;
    int velocity;
}

class SineMod extends SinOsc
{
	float baseFreq;
 	float modAmp;
	float modPhase;
	float tickPhase;
	250 => int index;

	fun void SineMod()
	{
		spork ~ modulator();
	}
	
	fun void modulator()
	{
		while( true )
		{
			( index * ( Math.sin( tickPhase + modPhase ) * modAmp ) ) + baseFreq => this.freq;
			0.04 +=> tickPhase;
			if( tickPhase > Math.TWO_PI ) 
				Math.TWO_PI -=> tickPhase;
		 	1::ms => now;
		}
	}

	fun float frequency( float newFreq )
	{
		newFreq => baseFreq;
		return baseFreq;
	}

	fun float amplitude( float newAmp )
	{
		newAmp => modAmp;
		return modAmp;
	}

	fun float phase( float newPhase )
	{
		newPhase => modPhase;
		return modPhase;
	}
}

// the event
NoteEvent on;
// array of ugen's handling each note
Event @ us[128];

// the base patch
Gain g => JCRev r => dac;
.1 => g.gain;
.2 => r.mix;

// handler for a single voice
fun void handler()
{
    // don't connect to dac until we need it
    SineMod m => ADSR env( 0.75::second, 0.25::second, 0.8, 0.5::second  );
    Event off;
    int note;

    while( true )
    {
        on => now;
        on.note => note;
        // dynamically repatch into reverb
        env => g;
        // turn note into frequency
        Std.mtof( note ) => m.frequency;
        // make our velocity control the amplitude of modulation
        Math.pow( on.velocity / 128.0, 4 ) => m.amplitude;
        // log our signal
        off @=> us[note];
        // open up envelope
		env.keyOn();
		// wait till we let go
        off => now;
        // let go of envelope
        env.keyOff();
		// no more signal
        null @=> us[note];
        // wait for the envelope to close 
		env.releaseTime() => now;
        // unpatch
        env =< g;
    }
}

// spork handlers, one for each voice
for( 0 => int i; i < 20; i++ ) spork ~ handler();

// infinite time-loop
while( true )
{
    // wait on midi event
    min => now;

    // get the midimsg
    while( min.recv( msg ) )
    {
        // catch only noteon
        if( (msg.data1 & 0xf0) == 0x90 )
        {
            // check velocity
            if( msg.data3 > 0 )
            {
                // store midi note number
                msg.data2 => on.note;
                // store velocity
                msg.data3 => on.velocity;
                // signal the event
                on.signal();
                // yield without advancing time to allow shred to run
                me.yield();

	      		chout <= msg.data1 <= " Note On: " <= msg.data2 <= " Velocity: " <= msg.data3 <= IO.nl();                
            }
            else
            {
                if( us[msg.data2] != null ) us[msg.data2].signal();
            }
        }
        else if( (msg.data1 & 0xf0) == 0x80 )
        {
            us[msg.data2].signal();
        }
    }
}
