\version "2.19.82"
\language "english"

\include "ViolinOne.ly"
\include "ViolinTwo.ly"
\include "Viola.ly"
\include "Cello.ly"
\include "ticks.ly"

#(define upbow-stil
   (make-path-stencil
    '(
      moveto 0 1
      lineto 0.2 1
      lineto 0.2 0
      lineto 0 0
      closepath
      moveto 0.4 1
      lineto 0.6 1
      lineto 0.6 0.5
      lineto 0.4 0.5
      closepath
      moveto 0.8 1
      lineto 1 1
      lineto 1 0.7
      lineto 0.8 0.7
      closepath
     )

    .01 1 1 #t))

% #(define new-script-alist
#(set! default-script-alist
   (append! default-script-alist
     (list
      `("clb"
         . (
             (stencil . ,upbow-stil)
             (toward-stem-shift-in-column . 0.0)
             (padding . 1)
             (avoid-slur . around)
             (direction . ,UP)))
      )))


clb = #(make-articulation "clb")

% #(set-default-paper-size "a0")%'landscape)
#(set-global-staff-size 14)%'landscape)
\book {
	\bookOutputName "Score"
  \paper {
    system-system-spacing.minimum-distance = #20
    system-separator-markup = \slashSeparator
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
        \override StaffGrouper.staff-staff-spacing.minimum-distance = #15
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
