\version "2.19.82"
\language "english"

\paper {
    tagline = ##f
}

\new Staff \with {
  \remove "Staff_symbol_engraver"
  \remove "Time_signature_engraver"
  \remove "Clef_engraver"
} {
  s1 ^\markup {
    \fontsize #1
    \line {
      \center-column {
        \raise #2 \musicglyph #"accidentals.mirroredflat.flat"
        "-6"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.flat.arrowdown"
        "-5"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.flat"
        "-4"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.flat.arrowup"
        "-3"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.mirroredflat"
        "-2"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.natural.arrowdown"
        "-1"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.natural"
        "0"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.natural.arrowup"
        "+1"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.sharp.slashslash.stem"
        "+2"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.sharp.arrowdown"
        "+3"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.sharp"
        "+4"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.sharp.arrowup"
        "+5"
      }
      \hspace #3
      \center-column {
        \raise #2 \musicglyph #"accidentals.sharp.slashslash.stemstemstem"
        "+6"
      }
    }
  }
}
