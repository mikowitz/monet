\version "2.19.82"
\language "english"

\include "ViolinOne.ly"
\include "ViolinTwo.ly"
\include "Viola.ly"
\include "Cello.ly"

% #(set-default-paper-size "a0")%'landscape)
#(set-global-staff-size 14)%'landscape)
\book {
	\bookOutputName "Score"
  \paper {
    system-system-spacing.minimum-distance = #20
    system-separator-markup = \slashSeparator
  }
  \score {
    \new StaffGroup <<
      \new Staff <<
        \time 4/2
        \clef treble
        \autoBeamOff
        \ViolinOne
        {
          \repeat unfold 45 { s1 * 2 \break }
          \bar "|."
        }
      >>
      \new Staff {
        \time 4/2
        \clef treble
        \autoBeamOff
        \ViolinTwo
      }
      \new Staff {
        \time 4/2
        \clef alto
        \autoBeamOff
        \Viola
      }
      \new Staff {
        \time 4/2
        \clef bass
        \autoBeamOff
        \Cello
      }
    >>
    \layout {
      \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/20)
      }
      \context {
        \StaffGroup
        \override StaffGrouper.staff-staff-spacing.minimum-distance = #15
      }
      \context {
        \Staff
        \accidentalStyle Score.dodecaphonic
        \omit TupletBracket
        \omit TupletNumber
      }
      \context {
        \Voice
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket.breakable = ##t
        \remove "Forbid_line_break_engraver"
        \remove "Tuplet_bracket_engraver"
        \override Beam.breakable = ##t
      }
    }
  }
}
