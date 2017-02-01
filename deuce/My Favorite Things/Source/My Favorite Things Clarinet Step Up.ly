\include "My Favorite Things Score.ly"

\header {
	instrument = "Clarinet"
}

{
	\transpose c' e'
	<<
		\new ChordNames { \ch }
		{\global \melody}
		\addlyrics { \text }
	>>
}