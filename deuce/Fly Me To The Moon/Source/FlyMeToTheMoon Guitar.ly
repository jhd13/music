\include "FlyMeToTheMoon Score.ly"

\header {
	instrument = "Guitar"
}

{
	<<
		\new ChordNames { \ch }
		{\global \melody}
		\addlyrics { \text }
	>>
}