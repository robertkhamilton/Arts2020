// window title
GG.windowTitle( "Windows in ChuGL" );
// fullscreen
GG.fullscreen();
// camera
// GOrbitCamera cam => GG.scene().camera;
// position
GG.camera().posZ( 15 );
// background
GG.scene().backgroundColor( Color.WHITE );

// visual patch
GPoints points --> GG.scene();

GLines xaxis --> GG.scene();
GLines yaxis --> GG.scene();

// color
points.color( Color.BLACK );

// params
4096 => int RESOLUTION;
10 => int LENGTH;
( LENGTH / RESOLUTION $ float ) => float step;
0 => int WINDOW_MODE;
float win[RESOLUTION];

xaxis.positions( [ @( 0.0, 0.0 ), @( LENGTH, 0.0 ) ] );
yaxis.positions( [ @( 0.0, 0.0 ), @( 0.0, LENGTH ) ] );

xaxis.color( Color.BLACK );
yaxis.color( Color.BLACK );

xaxis.width( 0.025 );
yaxis.width( 0.025 );

// scoot into the center of the window
GG.camera().posX( LENGTH / 2 );
GG.camera().posY( 5.0 );

Hid mouse;
HidMsg msg;

// open mouse
mouse.openMouse( 0 );

// text for UI
[ "Triangular", "Hann", "Hamming", "Blackman-Harris", "Parametric Gaussian" ] @=> string window_types[];
// UI variable
UI_Int window_selection( 0 );
// ChuGL UI values for comminication with widgets
UI_Float2 ui_line_positions[0];

// UI in its own render loop here
fun void ui()
{
    while( true )
    {
        // synchronize
        GG.nextFrame() => now;
        
        // list box
        if( UI.listBox( "Window Type", window_selection, window_types, -1 ) )
        {
            if( window_selection.val() == 0 ) 
            {
                triangular( RESOLUTION ) @=> win;
                updateWindowDisplay();
            } 
            else if( window_selection.val() == 1 )
            {
                hann( RESOLUTION ) @=> win;
                updateWindowDisplay();
            }
            else if( window_selection.val() == 2 )
            {
                hamming( RESOLUTION ) @=> win;
                updateWindowDisplay();
            }
            else if( window_selection.val() == 3 )
            {
                blackmanHarris( RESOLUTION ) @=> win;
                updateWindowDisplay();
            }
            else if( window_selection.val() == 4 )
            {
                parametricGaussian( RESOLUTION, 0.5 ) @=> win;
                updateWindowDisplay();
            }
        }
    }
} spork ~ ui();

while( true )
{
    GG.nextFrame() => now; 
}

fun void updateWindowDisplay()
{
    vec3 positions[0];
    for( int i; i < RESOLUTION; i++ )
    {
        positions << @( i * step, 10.0 * win[i], 0.0 );
    }
    points.positions( positions );
}

fun float lerp( float lhs, float rhs, float distance )
{
    float out;
    
    if( distance > 1.0 )
        return rhs;
    else if( distance < 0.0 )
        return lhs;
    
    return lhs + distance * ( rhs - lhs );
}

fun float[] triangular( int size )
{
    float window[size];
    for( int i; i < size; i++ )
    {
        1.0 - Math.fabs( (i - ( size / 2.0 ) ) / ( size ) ) => window[i];
    }
    return window;
}

fun float[] hann( int size )
{
    float window[size];
    for( int i; i < size; i++ )
    {
        0.5 - ( 0.5 * Math.cos( ( 2.0 * Math.pi * i ) / size ) ) => window[i];
    }
    return window;
}

fun float[] hamming( int size )
{
    float window[size];
    for( int i; i < size; i++ )
    {
        ( 25.0 / 46.0 ) - ( 0.5 * Math.cos( ( 2.0 * Math.pi * i ) / size ) ) => window[i];
    }
    return window;
}

fun float[] blackmanHarris( int size )
{
    float window[size];
    for( int i; i < size; i++ )
    {
        0.4243801 - ( 0.4973406 * Math.cos( ( 2.0 * Math.pi * i ) / size ) ) + ( 0.0782793 * Math.cos( ( 4.0 * Math.pi * i ) / size ) ) => window[i];
    }
    return window;
}

fun float[] parametricGaussian( int size, float standardDev )
{
    float window[size];

    if( standardDev > 0.5 )
        return window;

    for( int i; i < size; i++ )
    {
        Math.exp( -0.5 * Math.pow( ( i - ( size / 2.0 ) ) / ( standardDev * ( size / 2.0 ) ), 2 ) )=> window[i];
    }
    return window;
}