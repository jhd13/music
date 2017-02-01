\include "My Favorite Things Score.ly"

\header {
	instrument = "Clarinet"
}

{
	\transpose c' d'
	<<
		\new ChordNames { \ch }
		{\global \melody}
		\addlyrics { \text }
	>>
}