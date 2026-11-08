@import "Rec.ck"

Rec.auto();

Collage gran( "funky.wav", 2 ) => dac;
Collage destroy( "funky.wav", 16 )[2] => dac;
destroy => Gain sends( 0.3 )[2] => PitShift shifts[2] => PRCRev reverbs[2] => Gain diffuse( 0.03 )[2];
shifts => DelayA delays( 120::ms )[2] => Bitcrusher bits[2] => Gain feedback( 0.8 )[2];
feedback[0] => shifts[1]; 
feedback[1] => shifts[0];
bits[0].bits( 10 ); bits[0].downsample( 4 );
bits[1].bits( 10 ); bits[1].downsample( 4 );
diffuse[0] => reverbs[1]; // patch
diffuse[1] => reverbs[0];
shifts[0].mix( 1.0 ); shifts[0].shift( 2.0 ); // pitch shifting
shifts[1].mix( 1.0 ); shifts[1].shift( 0.5 );
reverbs => dac;

gran.position( 1.0, 2.0 * gran.samples()::samp );
gran.size( 138.0 );
gran.pitch( 1.0 );
gran.randomSize( gran.size() / 4.0 );

for( int i; i < destroy.size(); i++ )
{    
    destroy[i].position( 1.0, destroy[i].samples() * 8.0::samp );
    destroy[i].size( 18.0 );
    destroy[i].randomSize( 14.0 );
    destroy[i].spacer( 1::ms );
}

// spork ~ watch();

destroy[0].pitch( 0.9998, destroy[0].samples() * 8.0::samp );
destroy[1].pitch( 1.00002, destroy[0].samples() * 8.0::samp );

while( true )
{
    Math.random2( 0, destroy.size() - 1 ) => int which;
    destroy[which].pitch( 8.0, Math.randomf() * 2::second );
    2::second => now;
    destroy[which].pitch( 1.0, 2::second );
    Math.randomf() * 10::second => now;
}

fun void watch()
{
    while( true )
    {
        if( gran.position() == 1.0 )
        {
            gran.position( 0.0, 1::samp );
            1::samp => now;
            gran.position( 1.0, gran.samples()::samp );
        }
        1::ms => now;
    }
}
