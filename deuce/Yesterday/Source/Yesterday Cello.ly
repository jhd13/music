\include "Yesterday Score.ly"

\header {
	instrument = "Cello"
}

resttwo = { r1 | r1 | }
restfour = { \resttwo \resttwo }
resteight = { \restfour \restfour }

versenotes = {
	a1 | a1 | g4 f~f f | d2 e |
	d4 c8 c~c4. c8 | c4 f8 c b4 f'8 b, | bf4 a8 a~ a2 |
}

bridgenotes = {
	d2 e | f4 g a g8 f | g4. f8 e4 g8 f8~ | f1 |
	d2 e | f4 g a g8 f | g4. f8 e4 g | a1 |
}

cellonotes = \relative c' {
	% cello rests first 
	% intro
	\resttwo \bar "||"
	
	% verse 1
	\restfour
	\resttwo r1 |
	
	% verse 2
	\versenotes
	
	% bridge
	\bridgenotes
	
	% verse 3
	\versenotes
	
	% bridge 2
	d2 e | f4 g a g8 f | g4. f8 e4 g8 f8~ | f4 c ef c8 bf |
	a4 d e2 | f4 g a g8 f | g4. f8 e4 g | f f c2 |
	
	% verse 3
	a'1 | g2 e2 | f1 | f2 e |
	d4 c8 c~c4. c8 | c4 f8 c b4 f'8 b, | bf4 a8 a~ a2 |
	
	% outro
	c2 b2 | bf4 a8 a~ a |
	
}

{
	\new Staff = "main" {
		\clef bass
		% \transpose c' c,
		<<
			\new ChordNames \with{alignAboveContext = #"main"} { \ch }			
			\global \cellonotes
			% \addlyrics { \text }
			
		>>
	}
}