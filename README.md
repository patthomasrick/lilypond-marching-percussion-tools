# Lilypond Marching Percussion Tools

This is custom drum staves that provide custom noteheads and some other
convienences when typing marching percussion music in Lilypond. The most notable
features are:
-   drum staves - snare taps are `sn` or `snare`, rim shots are `rimshot` or
    `rs`, etc.
-   sticking format
	-   enter sticking mode with `\stickingFormatOn` and
    exit with `\stickingFormatOff`
	-   to annotate a snare tap as right-handed quater note, you'd enter
	    `sn4_\rh`
-   overall format that's better suited for reading music down - entered with
    `\format`

# Usage

Examples are very handy for this. To make it so that you do not have to copy and
paste `marching-drum-staves.ly` into every folder you have music in, it is
recommended that you use the `-I` flag with when you invoke Lilypond, that is:
```bash
lilypond --pdf --loglevel=WARN -I "/FOLDER/CONTAINING/MARCHING_DRUM_STAVES" -o "OUTPUT_FILE_NAME.pdf"
```

# Examples



## Todo
-   cymbals are part of drumline too
