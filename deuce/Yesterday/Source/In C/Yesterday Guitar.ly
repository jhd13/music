\include "Yesterday Score.ly"

\header {
	instrument = "Guitar"
}

{
	\transpose c' g
	<<
		\new ChordNames { \ch }
		{\global \melody}
		\addlyrics { \text }
	>>
}