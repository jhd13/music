% Fly me to the moon
\version "2.18.2"
\language "english"

\header {
	title = "Fly Me To The Moon"
}

global = {
	\key fs \minor
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
		% Intro
		\sl
		cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs | 
		cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs | 
		\nsl
		
		\repeat volta 2 {
			% Verse 1
			a'4^"2nd X Clar-->Cello-->Vox" gs fs e | d e fs a | gs fs e d | cs2 r2 |
			fs4 e d cs | b cs d fs | f d cs b | a2. r8 a |
			b fs' fs2. | r2 a4 gs | e1 | r2. r8 a, | 
			a d d2. | r2 fs4 e | d4. cs8~ cs2 | \sl cs4 cs cs cs \nsl |

			% Verse 2
			a'4 gs fs e | d e fs a | gs fs e d | cs2 r2 |
			fs4 e d cs | b cs d fs | f d cs b | a2. r8 a |
			b fs' fs2. | r2 a4 gs | e1 | r2. r8 a, |
			a d d2. | a2 gs |  
		}
		\alternative {
			% Turn back around to the head
			{ a1 | \sl cs4 cs cs cs \nsl | }
			
			% Go to outro
			{ a1 | \sl cs4 cs cs cs \nsl | }
		}
		
		% Outro
		\sl
		cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs | 
		cs4 cs cs cs | cs4 cs cs cs | cs4 cs cs cs \bar "|."
		\nsl
	}

text = \lyricmode {
		% No lyrics during intro 32 quarter notes
		\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
		\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
		\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
		\skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1

		
		% Verse 1 Lyrics
		fly me to the | moon and let me | play a- mong the | stars |
		let me see what | spring is like on | ju- pi- ter and | mars in |
		o- ther words | hold my | hand | in |
		o- ther words | dar- ling | kiss me | \skip 1 \skip 1 \skip 1 \skip 1 |
		
		% Verse 2 Lyrics
		fill my heart with | song and let me | sing for- e- ver | more |
		you are all I | long for all I | wor- ship and a- | dore in |
		o- ther words | please be | true | in |
		o- ther words | I love | you | \skip 1 \skip 1 \skip 1 \skip 1 |
		
		% No lyrics during outro
		you  | \skip 1 \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 \skip 1 |
		\skip 1 \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 \skip 1 | \skip 1 \skip 1 \skip 1 \skip 1 |
	}

ch = \chordmode {
		% intro chords
		a1:maj7  d:maj7  a:maj7  d:maj7
		a:maj7  d:maj7  a:maj7  gs2:m7.5- cs:7 
		
		% verse 1 chords
		fs1:m7 b:m7 e:7 a
		d gs:m7.5- cs:7 fs2:m7 fs:7
		b1:m7 e:7 cs:m7 fs:7
		b:m7 e:7 a gs2:m7.5- cs:7

		% verse 2 chords
		fs1:m7 b:m7 e:7 a
		d gs:m7.5- cs:7 fs2:m7 fs:7
		b1:m7 e:7 cs:m7.5- fs:7
		b:m7 e:7 a gs2:m7.5- cs:7
		
		% second ending chords
		a1:maj7 d:maj7
		a1:maj7 d:maj7
		a1:maj7 d:maj7
		a1:maj7 d:maj7
		a1:maj7
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