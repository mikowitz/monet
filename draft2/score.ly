\version "2.19.82"
\language "english"

\include "ViolinOne.ly"
\include "ViolinTwo.ly"
\include "Viola.ly"
\include "Cello.ly"
\include "ticks.ly"

% #(set-default-paper-size "letter")%'landscape)
#(set-global-staff-size 14)%'landscape)
\book {
	\bookOutputName "Score"
  \paper {
    system-system-spacing.minimum-distance = #20
    system-separator-markup = \slashSeparator
    print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fontsize #3 { \fromproperty #'page:page-number-string }
      }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \score {
    \new StaffGroup \with { connectArpeggios = ##t } <<
      \new Staff {
        \time 4/2
        \clef treble
        \autoBeamOff
        << \ViolinOne \ticks >>
      }
      \new Staff {
        \time 4/2
        \clef treble
        \autoBeamOff
        << \ViolinTwo \ticks >>
      }
      \new Staff {
        \time 4/2
        \clef alto
        \autoBeamOff
        << \Viola \ticks >>
      }
      \new Staff {
        \time 4/2
        \clef bass
        \autoBeamOff
        << \Cello \ticks >>
      }
    >>
    \layout {
      indent = 0\cm
      \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/20)
        \override SpacingSpanner.strict-grace-spacing = ##t
        \consists "Span_arpeggio_engraver"
      }
      \context {
        \StaffGroup
        \override StaffGrouper.staff-staff-spacing.minimum-distance = #17
      }
      \context {
        \Staff
        \accidentalStyle Score.dodecaphonic
        \omit TupletBracket
        \omit TupletNumber
        \omit Rest
        \omit TimeSignature
      }
      \context {
        \Voice
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket.breakable = ##t
        \remove "Forbid_line_break_engraver"
        \remove "Tuplet_bracket_engraver"
        \override Beam.breakable = ##t
        \override Glissando.breakable = ##t
      }
    }
  }
}
