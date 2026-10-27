int port;

// instantiate an osc receiver and an osc event
OscRecv oscReceiver;
OscEvent oscEvent;

// set our port through which we'll get osc data
6666 => port => oscReceiver.port;

// start listening
oscReceiver.listen();

// choose an osc namespace for which we'll be listening
string namespace;
"/arts2020/class, sisi" => namespace;

// set the namespace for our receiver and assign it to our event
oscReceiver.event( namespace ) @=> oscEvent;

// create array of users with size 0 (so that we can dynamically add each user as their messages arrive)
MusicTechnologyUser users[0];

// Timing event and duration
Event e;
    
500::ms => dur clockTime;

fun void UserNotePlayer(int id)
{    
    SinOsc s => ADSR env => JCRev r => Gain g => dac.chan(id%2);
    
    0.3 => g.gain;
    0.5 => r.mix;
    
    // ADSR timings
    10.0 => float attack_ms;
    8.0 => float decay_ms;
    500.0 => float release_ms;
    0.5 => float sustain_level;
        
    env.set( attack_ms::ms, decay_ms::ms, sustain_level, release_ms::ms );
    
    while( true )
    {
        e => now;
        
        // get midi note from user
        Std.mtof(users[id].midiNote) => s.freq;
    
        // Play note
        env.keyOn();
        
        (attack_ms + decay_ms)::ms => now;
        
        env.keyOff();
        
        env.releaseTime() => now;
    }
}

// Clock function
fun void Clock()
{
    while( true )
    {
        e.broadcast();
        
        clockTime => now;
    }
}

// Instantiate our clock
spork ~ Clock();

while( true )
{
    // code execution pauses here until we receive a message to the specified namespace on the specified port
    oscEvent => now;
    
    // get and read the next incoming message event
    while( oscEvent.nextMsg() != 0)
    {
        // we know the first value after our namespace is an integer, so call getFloat() to retrieve that value from the incoming osc message
        oscEvent.getString() => string currentName;
        oscEvent.getInt() => int currentChannel;
        oscEvent.getString() => string currentIpAddress;
        oscEvent.getInt() => int currentMIDINote;
        
        // print to console monitor window
        <<< "Current value is: ", currentName, currentChannel, currentIpAddress, currentMIDINote >>>;
        
        // variable to update data for the currentUser
        MusicTechnologyUser currentUser;
        
        // simple int flag to mark if user is new or if it already exists in our array
        0 => int userExists;
        
        <<< "Current users size: " + users.size() >>>;
        
        if(users.size() > 0)
        {
            for( MusicTechnologyUser user : users )
            {
                // Use IP Address as unique identifier
                if(user.ipAddress == currentIpAddress)
                {
                    // the stored user.id is the users index in our array
                    user.id => int currentId;
                    
                    // Name was updated
                    if( user.name != currentName )
                    {
                        <<< "User[" + currentId + "]: Changed name from " + users[currentId].name + " to " + currentName >>>;
                        
                        currentName => users[currentId].name;
                    }
                    
                    if( users[currentId].channel != currentChannel )
                    {
                        <<< "User[" + currentId + "]: Changed channel from " + user.channel + " to " + currentChannel >>>;
                        
                        currentChannel => users[currentId].channel;
                    }
                    
                    if( users[currentId].midiNote != currentMIDINote )
                    {
                        <<< "User[" + currentId + "]: Changed MIDI note from " + user.midiNote + " to " + currentMIDINote >>>;
                        
                        currentMIDINote => users[currentId].midiNote;
                    }
                    
                    1 => userExists;
                }                                
            }
        }
        
        // if we didn't find the user in our list, create a new one
        if( userExists == 0 ) 
        {
            MusicTechnologyUser newUser;
            
            users.size() => newUser.id;
            currentName => newUser.name;
            currentIpAddress => newUser.ipAddress;
            currentChannel => newUser.channel;
            currentMIDINote => newUser.midiNote;
            
            // add new user to our dynamic array
            users << newUser;
            
            <<< "Added users[" + newUser.id + "]: " + currentName + ", " + currentIpAddress + ", " + currentChannel + ", " + currentMIDINote >>>;
            
            // Instantiate note player for each user
            if( users.size() > 0 )
                spork ~ UserNotePlayer(users.size() -1);
        }        
    }
}

class MusicTechnologyUser
{
    int id;
    
    string name;
    
    string ipAddress;
    
    int channel;    
    
    int midiNote;
}