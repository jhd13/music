% Fly me to the moon
\version "2.18.2"
\language "english"

\header {
	title = "My Favorite Things"
}

global = {
	\key e \minor
	\time 3/4
}

skipthree = { \skip 1 \skip 1 \skip 1 }
skiptwelve = { \skipthree \skipthree \skipthree \skipthree }

verseonechords = \chordmode { 	
	e2.:m | e:m | e:m | e:m |
	c:maj7 | c:maj7 | c:maj7 | c:maj7 |
	a:m | d:7 | g | c |
	g | c | fs:m7.5- | b:7
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

melody = \relative c'' {
	% intro cello part
	b4. c8 d4 | e d c | b4. c8 d4 | e2. |
	b4. c8 d4 | e2 g4 | fs2. | ds2. |

	\repeat volta 2 {
		% melody - verse 1
		e4 b' b | fs e e | b e e | fs e2 |
		e4 b' b | fs e e | b e e | fs e2 |
		e4 b' a | e fs d | d a' g | c,2. |
		b4 c d | e fs g | a4. b8 a4 | ds,2. |
		
		% between verses
		\sl e4 e e | e e e | e e e | e e e | \nsl
		
		% melody - verse 2
		e4 b' b | fs e e | b e e | fs e2 |
		e4 b' b | fs e e | b e e | fs e2 |
		e4 b' a | e fs d | d a' g | c,2. |
		b4 c d | e fs g | a4. b8 a4 | ds,2. |
		
		% between verses
		\sl e4 e e | e e e | e e e | e e e | \nsl
		
		% melody in major key - verse 3
		e4 b' b | fs e e | b e e | fs e2 |
		e4 b' b | fs e e | b e e | fs e2 |
		e4 b' a | e fs d | d a' g | c,2. |
		b4 c d | e fs g | a4. as8 b4 | c2. |
		
		% bridge / chorus ... when the dog bites
		r4 b b | b2 e,4 | r4 a a | a2 ds,4 |
		r g g | g2 b,4 | e2.~  | e2 fs4 |
		e fs e | fs e fs | g a g | a2 g4 |
		b c b | c2.~ | c | b |
		
		% intro cello part again
		b,4. c8 d4 | e d c | b4. c8 d4 | e2. |
		b4. c8 d4 | e2 g4 | fs2. | ds2. |
	}
	
	e4 b g | e2. \bar "|."
}

text = \lyricmode {
	% intro
	\skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 | \skip 1 |
	\skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 | \skip 1 | \skip 1 |
	
	% verse 1 
	rain- drops on | ro- ses and | whis- kers on | kit- tens |
	bright cop- per | ket- tles and | warm wool- en | mit- tens |
	brown pa- per | pack- a- ges | tied up with | strings |
	these are a | few of my | fa- vo- rite | things |
	
	% rest for 4 measures (12 quarter notes)
	\skiptwelve
	
	% verse 2
	cream co- lored | po- nies and | crisp ap- ple | stru- dels |
	door- bells and | sleigh- bells and | schnit- zel with | noo- dles |
	wild geese that | fly with the | moon on their | wings |
	these are a | few of my | fa- vo- rite | things |

	% rest for 4 measures (12 quarter notes)
	\skiptwelve
	
	% verse 3
	girls in white | dres- ses with | blue sat- in | sash- es |
	snow- flakes that | stay on my | nose and eye- | lash- es |
	sil- ver white | win- ters that | melt in- to | spring |
	these are a | few of my | fa- vo- rite | things |
	
	% bridge / chorus
	when the | dog bites | when the | bee stings |
	when Im | feel- ing | down- | | I |
	sim- ply re- | mem- ber my | fa- vo- rite | things and |
	then I dont | feel -- |  | so |
	
	% cello intro part
	bad... \skip 1 \skip 1 | \skipthree | \skipthree | \skip 1
	\skipthree | \skip 1 \skip 1 | \skip 1 | \skip 1 |
	
	% last two bars
	\skipthree | \skip 1 |
	
}

ch = \chordmode {
	% intro chords
	g2. c g c
	g c fs:m7.5- b:7
	
	% verse 1 chords
	\verseonechords
	
	% 4 m rhythm section
	e:m | e:m | e:m | e:m |
	
	% verse 2 chords same as verse 1
	\verseonechords
	
	% 4 m rhythm section
	e | e | e | e |
	
	% verse 3 in Major
	e | e | e | e |
	a | a | a | a |
	a:m | d:7 | g | c |
	g | c | fs:m7.5- | b:7
	
	% bridge / chorus
	e:m | e:m | fs:m7.5- | b:7 |
	e:m | e:m | c | c |
	c | c | a/cs | a/cs |
	g/d | g/d | g:7.9- | g:7.9-
	
	% intro chords
	g2. c g c
	g c fs:m7.5- b:7
	
	% last two measures
	e:m | e:m
	
}

%{
\score {
	<<
		\new ChordNames { \ch }
		{ \global \melody }
		\addlyrics { \text }
	>>
}
%}