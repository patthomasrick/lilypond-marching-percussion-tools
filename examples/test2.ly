
\version "2.18.2"

\header {
	title = "Test"
}

\include "marching-drum-staves.ly"

songStructure = {
	\time 4/4
	\tempo 4=120

	s1*2 |
	
	\bar "|."
}

snareDrum = \drummode {
	\snareStaff
	snare4 rimshot rimhit stickclick |
	sn4 rs rh sc |
}

tenorDrums = \drummode {
	\format
	\stickingFormatOn

	spockI8^>_\rh spockII_\lh tomI_\rh tomII_\lh tomIII_\rh tomIV_\lh <ti tiv>4_\bh |
	si8 sii ti tii tiii tiv r4 |

	\stickingFormatOff
}

bassDrums = \drummode {
	\format
	\stickingFormatOn

	unison4_\rh uni_\lh rimhit_\rh rimhit_\lh |
	bassI8 bassII bassIII bassIV biv biii bii bi |

	\stickingFormatOff
}

snareDrumPart = \new DrumStaff \with {
	\consists "Instrument_name_engraver"
	instrumentName = "Snareline"
	shortInstrumentName = "Sn."
	drumStyleTable = #(alist->hash-table snare-drum)
} \new DrumVoice << \songStructure \snareDrum >>

tenorDrumsPart = \new DrumStaff \with {
	\consists "Instrument_name_engraver"
	instrumentName = "Tenorline"
	shortInstrumentName = "Tn."
	drumStyleTable = #(alist->hash-table tenor-drums)
} \new DrumVoice << \songStructure \tenorDrums >>

bassDrumsPart = \new DrumStaff \with {
	\consists "Instrument_name_engraver"
	instrumentName = "Bassline"
	shortInstrumentName = "Bd."
	drumStyleTable = #(alist->hash-table bass-drums)
} \new DrumVoice << \songStructure \bassDrums >>



scoreContent = \new StaffGroup <<
	\snareDrumPart
	\tenorDrumsPart
	\bassDrumsPart
	% \cymbalPart
>>

\score {
	\scoreContent
	\layout { }
}
