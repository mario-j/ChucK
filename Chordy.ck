// connect sine oscillator to D/A convertor (sound card)
SinOsc s => dac;
     
[ 262, 329, 392, 494, 587, 698, 783, 880, 1046 ] @=> int freq[];


0 => int i;
while (true) {
    for ( 0 => int i; i < freq.cap(); i++ )
    {
      100::ms => now;
      freq[i] => s.freq;
    }
    
    for ( freq.cap() - 2 => int i; i > 0; i--)
    {
      100::ms => now;
      freq[i] => s.freq;
    }
}
