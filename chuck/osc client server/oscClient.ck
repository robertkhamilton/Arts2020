/*
Update myMidiNote to change the midi note that you're sending to the server
*/ 

53 => int myMIDINote;


// ip address of our osc listener/server: this can be "localhost" or "127.0.0.1" to refer to our own machine, or an external ip for any computer on our networks
// NOTE: "localhost" generally only works on Mac or Linux machines
//"192.168.1.246" => string hostname;
"127.0.0.1" => string hostname;

// target port on the listener/server
6666 => int port;

// data to send to the oscServer (name, channel, ip)
"rob4" => string myName;
2 => int myChannel;
"10.0.0.991" => string myIpAddress;

// we can pass in port and hostname as arguments too; these will over-write our current values assigned above
if( me.args() ) me.arg(0) => hostname;
if( me.args() > 1 ) me.arg(1) => Std.atoi => port;

<<< "Sending osc message: '" + myName + " " + myChannel + " " + myIpAddress + "' to hostname: '" + hostname + "' using port: " + port + "..." >>>;

// create a variable of type oscSend
OscOut oscSend;

// populate the osc out class with our target hostname:port
oscSend.dest( hostname, port );

// set our osc namespace we'll be sending out
string namespace;
"/arts2020/class" => namespace;

// Send an osc message that consists of the namespace followed by a space, followed by our data

// start our message with the namespace string
oscSend.start( namespace );

// attach our name, channel and ip address to the message as string, int, string, int (sisi)
myName => oscSend.add;
myChannel => oscSend.add;
myIpAddress => oscSend.add;
myMIDINote => oscSend.add;

// send the osc message with data in the format [string integer string]: i.e. <namespace> <name> <channel> <ip>
oscSend.send();
