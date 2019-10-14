\version "2.19.32"
\language "english"

\score {
  \new Staff {
    \autoBeamOff
    \override Beam.damping = #10
    \override Stem.no-stem-extend = ##t
    \relative c' {
      c8[^"sloped beam" d e f]
      g,[^"non sloped beam" a b c]
      c'[ b a g] f[ e d c]
      c[ e g c] c[ g e c]
    }
  }
}

