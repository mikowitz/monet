\version "2.19.82"
\language "english"

\score {
  \new Score <<
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = #"violin"
      } {
        \relative {
          b1 \ppp ^\markup { clt }
        }
      }
      \new Staff \with {
        instrumentName = #"bow position"
      } {
        \relative {
          \override Staff.StaffSymbol.line-count = #10
          \clef percussion
          \makeClusters {
            < a, g''>1
            < a f''>1
          }
        }
      }
      \new Staff \with {
        instrumentName = #"bowing range"
      } {
        \relative {
          \makeClusters {
            < e' g >1 < e b'>1 < e f' >1 < e f'>1 < e f >1 < d e >1 < b' bs >1 < b bs >1
          }
        }
      }
      \new Staff {
        \relative {
          \stopStaff
          % \override Staff.StaffSymbol.line-positions = #'(-5 -3 0 3 5)
          \override Staff.StaffSymbol.line-positions = #'(-4 5)
          \startStaff
          \makeClusters {
            < e' es >2 < e es >
            < e f > < e f >
            < e g > < e g >
            < e a > < e a >
            < e b' > < e b' >
            < e c' > < e c' >
            < e d' > < e d' >
            < e e' > < e e' >
            < e f' > < e f' >
            < e g' > < e g' >
          }
          s4
          \makeClusters {
            < g' g > < g g >
          }
        }
      }
    >>
  >>
}
