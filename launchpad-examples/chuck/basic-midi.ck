// harvested from chuck examples
// modified by everett for novation launchpad
// important note: the launchpad does not send note off messages
// instead, it sends a note on message with velocity 0 for the corresponding note number

// number of the device to open (see: chuck --probe)
0 => int device;
// get command line
if( me.args() ) me.arg(0) => Std.atoi => device;

// the midi event
MidiIn min;
// the message for retrieving data
MidiMsg msg;

// open the device
if( !min.open( device ) ) me.exit();

// print out device that was opened
<<< "MIDI device:", min.num(), " -> ", min.name() >>>;

// infinite time-loop
while( true )
{
    // wait on the event 'min'
    min => now;

    // get the message(s)
    while( min.recv(msg) )
    {
    	if( msg.data1 == 176 )
    	{
    		chout <= msg.data1 <= " CC: " <= msg.data2 <= " Value: " <= msg.data3 <= IO.nl();
    	}
  		else if( msg.data1 == 144 && msg.data3 > 0 )
      	{
      		chout <= msg.data1 <= " Note On: " <= msg.data2 <= " Velocity: " <= msg.data3 <= IO.nl();
      	}
      	else if( msg.data1 == 144 && msg.data3 == 0 )
     	{
     		chout <= msg.data1 <= " Note Off: " <= msg.data2 <= " Velocity: " <= msg.data3 <= IO.nl();
     	}
     	else if( msg.data1 == 160 )
     	{
     		chout <= msg.data1 <= " Note Pressure: " <= msg.data2 <= " : " <= msg.data3 <= IO.nl();
     	}
    	else
    	{
    		chout <= msg.data1 <= " " <= msg.data2 <= " " <= msg.data3 <= IO.nl();
    	}
        // print out midi message
    }
}
