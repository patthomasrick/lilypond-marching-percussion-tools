
\version "2.18.2"

% ############### SNARE ##################

#(define snare-drum '(
	(snare 		default #f 0)
	(rimshot 		xcircle #f 0)
	(rimhit 		cross #f 0)
	(stickclick	 	cross #f 1)
	))

drumPitchNames.snare = #'snare
drumPitchNames.rimshot = #'rimshot
drumPitchNames.rimhit = #'rimhit
drumPitchNames.stickclick = #'stickclick
drumPitchNames.sn = #'snare
drumPitchNames.rs = #'rimshot
drumPitchNames.rh = #'rimhit
drumPitchNames.sc = #'stickclick

snareStaff = {
	% This defines a staff with only two lines.
	% It also defines the positions of the two lines.
	\override Staff.StaffSymbol.line-positions = #'(0)

	% This is necessary; if not entered, the barline would be too short!
	\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

% ############### TENORS ##################

% define the tenor drums
#(define tenor-drums '(

	(spockI 	default #f 6)
	(spockII 	default #f 5)
	(tomI 		default #f 3)
	(tomII 		default #f 1)
	(tomIII 	default #f -1)
	(tomIV 		default #f -3)

	(spockIrs 	xcircle #f 6)
	(spockIIrs 	xcircle #f 5)
	(tomIrs 	xcircle #f 3)
	(tomIIrs 	xcircle #f 1)
	(tomIIIrs 	xcircle #f -1)
	(tomIVrs 	xcircle #f -3)

	(spockIxo 	cross #f 6)
	(spockIIxo 	cross #f 5)
	(tomIxo 	cross #f 3)
	(tomIIxo 	cross #f 1)
	(tomIIIxo 	cross #f -1)
	(tomIVxo 	cross #f -3)

	(stickclick	cross #f 0)
	))

	% drums		
drumPitchNames.spockI = #'spockI
drumPitchNames.spockII = #'spockII
drumPitchNames.tomI = #'tomI
drumPitchNames.tomII = #'tomII
drumPitchNames.tomIII = #'tomIII
drumPitchNames.tomIV = #'tomIV
drumPitchNames.si = #'spockI
drumPitchNames.sii = #'spockII
drumPitchNames.ti = #'tomI
drumPitchNames.tii = #'tomII
drumPitchNames.tiii = #'tomIII
drumPitchNames.tiv = #'tomIV
	% rim shots
drumPitchNames.sirs = #'spockIrs
drumPitchNames.siirs = #'spockIIrs
drumPitchNames.tirs = #'tomIrs
drumPitchNames.tiirs = #'tomIIrs
drumPitchNames.tiiirs = #'tomIIIrs
drumPitchNames.tivrs = #'tomIVrs
	% cross overs
drumPitchNames.sixo = #'spockIxo
drumPitchNames.siixo = #'spockIIxo
drumPitchNames.tixo = #'tomIxo
drumPitchNames.tiixo = #'tomIIxo
drumPitchNames.tiiixo = #'tomIIIxo
drumPitchNames.tivxo = #'tomIVxo
	% other
drumPitchNames.stickclick = #'stickclick
drumPitchNames.sc = #'stickclick

% ############### BASS DRUMS #############

#(define bass-drums '(
	(bassI 		default #f 3)
	(bassII 	default #f 1)
	(bassIII 	default #f -1)
	(bassIV	 	default #f -3)
	(unison		slash #f 0)
	(rimhit		cross #f 0)
	))

drumPitchNames.bassI = #'bassI
drumPitchNames.bassII = #'bassII
drumPitchNames.bassIII = #'bassIII
drumPitchNames.bassIV = #'bassIV
drumPitchNames.unison = #'unison
drumPitchNames.rimhit = #'rimhit
drumPitchNames.bi = #'bassI
drumPitchNames.bii = #'bassII
drumPitchNames.biii = #'bassIII
drumPitchNames.biv = #'bassIV
drumPitchNames.uni = #'unison
drumPitchNames.rh = #'rimhit

% ################ OTHER #################

% better formatting for sticking
stickingFormatOn = {
	\override TextScript.outside-staff-priority = ##f
	\textLengthOn 
}

stickingFormatOff = {
	\revert TextScript.outside-staff-priority
	\textLengthOff
}

lh = \markup {
	"L"
}

rh = \markup {
	"R"
}

bh = \markup {
	"RL"
}

% my default formatting
format = {
    \override Score.SpacingSpanner.strict-note-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
    \compressFullBarRests
    \stemUp
}


