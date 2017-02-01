\include "Yesterday Score.ly"

\header {
	instrument = "Clarinet"
}

{
	\transpose c' a
	<<
		\new ChordNames { \ch }
		{\global \melody}
		\addlyrics { \text }
	>>
}