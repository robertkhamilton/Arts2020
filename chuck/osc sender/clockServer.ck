
500::ms => dur clockSpeed;

// create a variable of type oscSend
OscOut oscSend;

// set our osc namespace we'll be sending out
"/arts2020/class" => string namespace;

// create array of ip addresses of laptops
[
"192.168.1.254",
"192.168.0.101",
"192.168.0.102",
"192.168.0.103"
] @=> string ipAddresses[]; // @=> is an assignment of an object

// target port on the listener/server
6666 => int port;

0 => int counter;

while( true )
{
    ipAddresses.size() => int ipCount;
    
    for( 0=>int i; i< ipCount; i++ )
    {
        // populate the osc out class with our target hostname:port
        oscSend.dest( ipAddresses[i], port );
    
        // start our message with the namespace string
        oscSend.start( namespace );
        
        // Can send anything as a clock message
        "boo" => oscSend.add;
        
        // send the osc message with data in the format [string]
        oscSend.send();
        
        <<< "test " + ipAddresses[i] >>>;
    }
    
    // increment time
    clockSpeed => now;
}