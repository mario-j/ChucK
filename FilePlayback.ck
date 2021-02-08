// connect sine oscillator to D/A convertor (sound card)
SndBuf buffer => dac;

me.dir() + "AudioFiles/Easy.wav" => buffer.read;

5::second => now;