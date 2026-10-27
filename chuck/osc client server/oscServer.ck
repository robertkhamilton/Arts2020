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
    }
}