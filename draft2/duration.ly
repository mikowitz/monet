\version "2.19.82"
\language "english"

\paper {
    tagline = ##f
}

\new Staff \with {
  \remove "Time_signature_engraver"
} {
  \once \omit TimeSignature
  \time 14/2
  s4
  c''8 ^\markup { \italic "arco" } [
  s1
  d''8
  s1
  \hideNotes
  c''8
  \unHideNotes
  \once \omit Rest
  r8 ]
  \once \set stemLeftBeamCount = #0
  \once \set stemRightBeamCount = #1
  b'8 [] ^\markup { \italic "pizz." }
  s1
  s4
  a'8 ^\markup { \italic "arco" } [
  s1
  d''8
  s1
  \hideNotes
  a'8
  \unHideNotes
  \once \omit Rest
  r8 ]
}

