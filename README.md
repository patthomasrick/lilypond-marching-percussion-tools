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
```sh
lilypond --pdf --loglevel=WARN -I "/FOLDER/CONTAINING/MARCHING_DRUM_STAVES" -o "OUTPUT_FILE_NAME.pdf"
```

## Notes

Browsing the `marching-drum-staves.ly` file itself is perhaps clear enough. If
you do not feel like my notes names are brief enough, also feel free to edit/add
more.

### Snare

-   tap/regular notehead - `snare`, `sn`
-   rimshot ("X" in circle) - `rimshot`, `rs`
-   rimhit (triangle) - `rimhit`, `rh`
-   stick click ("X") - `stickclick`, `sc`

### Quads

-   tap/regular notehead
    -	`spockI`, `si`
    -	`spockII`, `sii`
    -	`tomI`, `ti`
    -	`tomII`, `tii`
    -	`tomIII`, `tiii`
    -	`tomIV`, `tiv`
-   rimshots - `xcircle` notehead
    -	`spockIrs`, `sirs`
    -	`spockIIrs`, `siirs`
    -	`tomIrs`, `tirs`
    -	`tomIIrs`, `tiirs`
    -	`tomIIIrs`, `tiiirs`
    -	`tomIVrs`, `tivrs`
-   crossovers - `cross` notehead
    -	`spockIxo`, `sixo`
    -	`spockIIxo`, `siixo`
    -	`tomIxo`, `tixo`
    -	`tomIIxo`, `tiixo`
    -	`tomIIIxo`, `tiiixo`
    -	`tomIVxo`, `tivxo`
-   stick click - `cross` notehead - `stickclick`, `sc`

### Bass Drums

-   tap/regular notehead
    -	`bassI`, `bi`
    -	`bassII`, `bii`
    -	`bassIII`, `biii`
    -	`bassIV`, `biv`
-   unison
    -	tap - `unison`, `uni`
    -	rimhit/click - `rimhit`, `rh`

# Examples

[test2.ly](https://github.com/patthomasrick/lilypond-marching-percussion-tools/blob/master/examples/test2.ly)
->
[test2.pdf](https://github.com/patthomasrick/lilypond-marching-percussion-tools/blob/master/examples/test2.pdf)

# Todo
-   cymbals are part of drumline too
