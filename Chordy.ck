// connect sine oscillator to D/A convertor (sound card)
SinOsc s => dac;
     
[ 262, 329, 392, 494, 587, 698, 783 ] @=> int freq[];

for ( 0 => int i; i < freq.cap(); i++ )
{
  100::ms => now;
  freq[i] => s.freq;
}
