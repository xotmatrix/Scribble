if (!SCRIBBLE_ALLOW_GLYPH_DATA_GETTER) return;

typist = scribble_typist_legacy();
typist.TypeIn(0.1, 0, false);
typist.TypeSoundPerChar(snd_crank, 1.0, 1.0, " "); //THIS GETS LOUD