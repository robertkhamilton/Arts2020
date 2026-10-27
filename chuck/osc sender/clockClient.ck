
// CHANGE ME
61 => int midiNote;

// instantiate an osc receiver and an osc event
OscRecv oscReceiver;
OscEvent oscEvent;

// set our port through which we'll get osc data
6666 => oscReceiver.port;

"/arts2020/class, s" => string namespace;

// start listening
oscReceiver.listen();

// set the namespace for our receiver and assign it to our event
oscReceiver.event( namespace ) @=> oscEvent;

fun void UserNotePlayer()
{    
    SinOsc s => ADSR env => JCRev r => Gain g => dac;
    
    0.3 => g.gain;
    0.5 => r.mix;
    
    // ADSR timings
    10.0 => float attack_ms;
    8.0 => float decay_ms;
    500.0 => float release_ms;
    0.5 => float sustain_level;
    
    env.set( attack_ms::ms, decay_ms::ms, sustain_level, release_ms::ms );
    
    // get freq from midi note
    Std.mtof(midiNote) => s.freq;
    
    // Play note
    env.keyOn();
    
    (attack_ms + decay_ms)::ms => now;
    
    env.keyOff();
    
    env.releaseTime() => now;
    
    // allow enough time for the reverb tail to fully decay before shred dies
    2000::ms => now;
}

while( true )
{
    // code execution pauses here until we receive a message to the specified namespace on the specified port
    oscEvent => now;
    
    // get and read the next incoming message event
    while( oscEvent.nextMsg() != 0)
    {
        spork ~ UserNotePlayer();
    }
        
}