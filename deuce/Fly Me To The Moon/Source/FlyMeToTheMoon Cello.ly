\include "FlyMeToTheMoon Score.ly"

\header {
	instrument = "Cello"
}

{
	\new Staff = "main" {
		\clef bass
		\transpose c' c,
		<<
			\new ChordNames \with{alignAboveContext = #"main"} { \ch }
			\global \melody
			\addlyrics { \text }
		>>
	}
}