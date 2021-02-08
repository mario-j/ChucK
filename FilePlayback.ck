// connect sine oscillator to D/A convertor (sound card)
SndBuf buffer => dac;

me.dir() + "AudioFiles/Easy.wav" => buffer.read;

buffer.samples() / 500 => int s;
s::samp => dur tick;

while(true) {
    s * Std.rand2(0, 15) => buffer.pos;
    tick => now;
}