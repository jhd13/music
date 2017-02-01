% Fly me to the moon
\version "2.18.2"
\language "english"

\header {
	title = "Yesterday"
}

global = {
	\key f \major
	\time 4/4
}

skipthree = { \skip 1 \skip 1 \skip 1 }
skipfour = { \skip 1 \skip 1 \skip 1 \skip 1 }
skiptwelve = { \skipthree \skipthree \skipthree \skipthree }

versechords = \chordmode {
	f1 | e2:m7.5- a:7 | d2:m d4:m c |
	bf2 c | f1 | d2:m g:7 | bf f |
}

bridgechords = \chordmode {
	a1:7 | d2:m bf | g:m c:7 | f1
	a1:7 | d2:m bf | g:m c:7 | f1
}

% sl = slash notation for chords w/out notes. nsl = revert slash notation
sl = {
  \override NoteHead.style = #'slash
  \hide Stem
}
nsl = {
  \revert NoteHead.style
  \undo \hide Stem
}

melody = \relative c' {
	% intro
	\sl f4 f f f | f f f f  \nsl \bar "||" 
	
	% verse 1
	g8 f f2. | r4 a8 b cs d e f | e4 d8 d~ d2 | r4 d8 d c bf a g |
	bf4 a8 a~ a4. g8 | f4 a8 g~ g4. d8 | f4 a8 a~ a2 | 

	% verse 1
	g8 f f2. | r4 a8 b cs d e f | e4 d8 d~ d2 | r4 d8 d c bf a g |
	bf4 a8 a~ a4. g8 | f4 a8 g~ g4. d8 | f4 a8 a~ a2 | 
	
	% chorus / bridge
	a a | d4 e f e8 d | e4. d8 c4 d8 a~ | a1 |
	a2 a | d4 e f e8 d | e4. d8 c4 e | f c bf a |
	
	% verse 3
	g8 f f2. | r4 a8 b cs d e f | e4 d8 d~ d2 | r4 d8 d c bf a g |
	bf4 a8 a~ a4. g8 | f4 a8 g~ g4. d8 | f4 a8 a~ a2 | 
	
	% chorus / bridge
	a a | d4 e f e8 d | e4. d8 c4 d8 a~ | a1 |
	a2 a | d4 e f e8 d | e4. d8 c4 e | f c bf a |
	
	% verse 4
	g8 f f2. | r4 a8 b cs d e f | e4 d8 d~ d2 | r4 d8 d c bf a g |
	bf4 a8 a~ a4. g8 | f4 a8 g~ g4. d8 | f4 a8 a~ a2 | 
	
	% outro
	f4 a g d | f a8 a~ a2 |

}

text = \lyricmode {
	% skip intro measures
	\skipfour \skipfour
	
	% Verse 1
	Yes- ter- day | all my trou- bles seemed so | far a- way |
	Now it looks as though they're | here to stay oh | I be- lieve in | yes- ter- day
	
	% Verse 2
	Sud- den- ly | I'm not half the man I | used to be | 
	There's a sha- dow han- ging | o- ver me Oh |
	Yes- ter- day came | sud- den- ly |
	
	% Chorus / bridge
	Why she | had to go I don't | know she would- n't say -- |
	I said | some- thing wrong now I | long for yes- ter | day- - - - |
	
	% Verse 3
	Yes- ter- day | love was such an ea- sy | game to play |
	Now I need a place to | hide a- way Oh | I be- lieve in | yes- ter- day |

	% Chorus / bridge
	Why she | had to go I don't | know she would- n't say -- |
	I said | some- thing wrong now I | long for yes- ter | day- - - - |
	
	% Verse Again
	Yes- ter- day | love was such an ea- sy | game to play |
	Now I need a place to | hide a- way Oh | I be- lieve in | yes- ter- day |

	% outro
	hmm- hmm- hmm- hmm- | hmm- hmm- hmm |
	
}

ch = \chordmode {
	% intro
	f1 | f |
	
	% verse 1
	\versechords
	
	% verse 2
	\versechords
	
	% bridge / chorus
	\bridgechords

	% verse 3
	\versechords
	
	% bridge / chorus 2
	\bridgechords

	% verse 4
	\versechords
	
	% outro
	f2 g:7 | bf f |
	
	
}

%{
\score {
	<<
		\new ChordNames { \ch }
		{ \global \melody }
		\addlyrics { \text }
	>>
}
}%
