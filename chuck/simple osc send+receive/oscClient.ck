
// ip address of our osc listener/server: this can be "localhost" or "127.0.0.1" to refer to our own machine, or an external ip for any computer on our networks
// NOTE: "localhost" generally only works on Mac or Linux machines
//"192.168.1.246" => string hostname;
"127.0.0.1" => string hostname;

// target port on the listener/server
6666 => int port;

// send a message to the server
"hello there" => string message;

// we can pass in port and hostname as arguments too; these will over-write our current values assigned above
if( me.args() ) me.arg(0) => hostname;
if( me.args() > 1 ) me.arg(1) => Std.atoi => port;

<<< "Sending osc message: '" + message + "' to hostname: '" + hostname + "' using port: " + port + "..." >>>;

// create a variable of type oscSend
OscOut oscSend;

// populate the osc out class with our target hostname:port
oscSend.dest( hostname, port );

// set our osc namespace we'll be sending out
string namespace;
"/arts2020/class" => namespace;

// This loop will send an osc message that consists of the namespace followed by a space, followed by our data
while( true )
{
    // start our message with the namespace string
    oscSend.start( namespace );
    
    // choose a random integer between 0 and 100 and send it 
    Math.random2( 0, 100 ) => oscSend.add;
    
    // send the osc message
    oscSend.send();
    
    // set the time interval for sending our messages and "chuck it to now"
    500::ms => now;
}