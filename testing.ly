\version "2.19.82"
\language "english"

#(set-default-paper-size "a0" 'landscape)

\paper {
  system-system-spacing.minimum-distance = #20
}

\new StaffGroup <<
  \new Staff {
    \accidentalStyle Score.dodecaphonic
    \time 4/1
    \clef bass
  \break
\tuplet 1/16 {
  \once \override NoteHead.style = #'default
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 2/16 {
  \once \override NoteHead.style = #'default
  b\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 1/16 {
  \once \override NoteHead.style = #'default
  b\pp ^\markup { "(nat., M)" } _\markup { "2" }
}
\break
\tuplet 2/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  b\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 3/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  b\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  fs\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 4/16 {
  \once \override NoteHead.style = #'xcircle
  b\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 5/16 {
  \once \override NoteHead.style = #'triangle
  b\p ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  ds\p ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  ds\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 4/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  b\p ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  b\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  fs\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  b\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
}
\break
\tuplet 5/16 {
  \once \override NoteHead.style = #'harmonic
  ds\p ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  b\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  fs\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  ds\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 6/16 {
  \once \override NoteHead.style = #'default
  fs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  as\mp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  fs\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 7/16 {
  \once \override NoteHead.style = #'default
  cs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  e\mp ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 8/16 {
  \once \override NoteHead.style = #'default
  e\mp ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  cs\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  cs\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  cs\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  fs\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 9/16 {
  \once \override NoteHead.style = #'default
  cs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  cs\mf ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  fs\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 8/16 {
  \once \override NoteHead.style = #'harmonic
  fs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  cs\mf ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 10/16 {
  \once \override NoteHead.style = #'harmonic
  fs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  fs\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  cs\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
}
\break
\tuplet 11/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  as\mp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  c\p ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  as\p ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  as\p ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  cs\mf ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 12/16 {
  \once \override NoteHead.style = #'triangle
  fs\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  gs\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  fs\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  as\f ^\markup { "-1/8" } ^\markup { "(circ., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  gs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 13/16 {
  \once \override NoteHead.style = #'xcircle
  cs\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  fs\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  gs\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\mf ^\markup { "-1/4" } ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "+1/4" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  gs\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  as\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 14/16 {
  \once \override NoteHead.style = #'default
  gs\p ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\mf ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  a\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  fs\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  c\ppp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 13/16 {
  \once \override NoteHead.style = #'harmonic
  as\p ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  e\mf ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  a\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\f ^\markup { "-1/6" } ^\markup { "(circ., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  e\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  as\pp ^\markup { "+1/4" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  gs\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 15/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  fs\p ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  fs\mf ^\markup { "-1/8" } ^\markup { "(nat., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  c\f ^\markup { "-1/6" } ^\markup { "(circ., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  d\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  a\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  a\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  fs\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 16/16 {
  \once \override NoteHead.style = #'triangle
  d\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  a\f ^\markup { "(circ., F)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  e\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  fs\pp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
}
\break
\tuplet 17/16 {
  \once \override NoteHead.style = #'xcircle
  a\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\f ^\markup { "-1/6" } ^\markup { "(nat., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  cs\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  a\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  d\ppp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  d\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\mf ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 16/16 {
  \once \override NoteHead.style = #'xcircle
  d\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  cs\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  c\f ^\markup { "-1/6" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  fs\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 18/16 {
  \once \override NoteHead.style = #'default
  d\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  as\ff ^\markup { "+1/4" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  as\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  as\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  e\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  gs\f ^\markup { "-1/4" } ^\markup { "(circ., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  a\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\pp ^\markup { "(nat., M)" } _\markup { "4" }
}
\break
\tuplet 19/16 {
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  as\p ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\p ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  e\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  as\mf ^\markup { "+1/4" } ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  as\ppp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\ppp ^\markup { "(nat., M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  f\p ^\markup { "(nat., M)" } _\markup { "2" }
}
\break
\tuplet 20/16 {
  \once \override NoteHead.style = #'harmonic
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  gs\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ds\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  f\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  f\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  fs\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  as\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  ds\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  cs\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\f ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 21/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  f\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'xcircle
  g\p ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  df\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  e\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  df\f ^\markup { "-1/6" } ^\markup { "(circ., T)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  e\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  gf\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  g\ff ^\markup { "-1/8" } ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 22/16 {
  \once \override NoteHead.style = #'harmonic-mixed
  e\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  a\ff ^\markup { "-1/4" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic-mixed
  a\p ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  b\p ^\markup { "+1/4" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  a\f ^\markup { "-1/4" } ^\markup { "(nat., T)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  g\p ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  e\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  af\f ^\markup { "-1/6" } ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 21/16 {
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  g\ff ^\markup { "-1/8" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  bf\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\p ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\f ^\markup { "(nat., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  df\f ^\markup { "-1/6" } ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  e\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 23/16 {
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  a\ff ^\markup { "+1/6" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'xcircle
  df\mp ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  bf\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  b\p ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  gf\f ^\markup { "(circ., T)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\pp ^\markup { "(nat., M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  d\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\ff ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 24/16 {
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\ff ^\markup { "-1/8" } ^\markup { "(nat., clb)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\mp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  bf\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  df\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  bf\f ^\markup { "(circ., F:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  bf\f ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 25/16 {
  \once \override NoteHead.style = #'triangle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  a\ff ^\markup { "-1/4" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic-mixed
  d\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  af\ff ^\markup { "-1/6" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  bf\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  f\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  f\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  d\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  b\pp ^\markup { "+1/4" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  g\mf ^\markup { "-1/8" } ^\markup { "(nat., F)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  bf\f ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 26/16 {
  \once \override NoteHead.style = #'triangle
  b\pp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  af\ff ^\markup { "-1/6" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic-mixed
  e\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  df\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  f\mf ^\markup { "(nat., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  bf\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  g\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\ppp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  bf\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  f\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  ef\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  a\ppp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  df\pp ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  bf\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  g\f ^\markup { "-1/8" } ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 27/16 {
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  e\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\mp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  df\p ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  ef\f ^\markup { "(circ., F:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  a\pp ^\markup { "-1/4" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  a\ppp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  ef\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  f\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\ppp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  a\pp ^\markup { "-1/4" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\pp ^\markup { "+1/4" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  df\mf ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 28/16 {
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  c\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  f\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  f\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  f\f ^\markup { "(nat., T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  df\mp ^\markup { "-1/6" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  f\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  df\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  g\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  a\pp ^\markup { "-1/4" } ^\markup { "(nat., M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  ef\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  ef\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  af\ff ^\markup { "-1/6" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  bf\mf ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 29/16 {
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  e\f ^\markup { "-1/8" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  d\mf ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  g\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  c\p ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\mf ^\markup { "(nat., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  g\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  d\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  c\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  c\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  bf\mf ^\markup { "-1/6" } ^\markup { "(circ., F)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  c\f ^\markup { "(nat., clt)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  g\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 30/16 {
  \once \override NoteHead.style = #'triangle
  d\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'xcircle
  e\f ^\markup { "-1/8" } ^\markup { "(circ., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  b\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  e\p ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  g\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\mp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  c\f ^\markup { "(nat., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  af\ff ^\markup { "-1/6" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\pp ^\markup { "-1/4" } ^\markup { "(nat., M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  e\pp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  fs\ff ^\markup { "-1/4" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  g\mf ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  c\mf ^\markup { "(*, *)" } _\markup { "0" }
}
\break
\tuplet 31/16 {
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  c\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  ef\f ^\markup { "(nat., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  bf\p ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  e\mp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  g\p ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  g\f ^\markup { "(nat., F:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  b\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(nat., M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'xcircle
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\pp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  e\p ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  af\ff ^\markup { "+1/4" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  b\f ^\markup { "+1/4" } ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  g\mf ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 32/16 {
  \once \override NoteHead.style = #'triangle
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\f ^\markup { "(circ., F)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  cs\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  b\p ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  a\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  g\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  c\mp ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  f\f ^\markup { "-1/6" } ^\markup { "(nat., 1/2 clt)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  e\mp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  b\ppp ^\markup { "+1/4" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  c\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  e\pp ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  c\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  g\mf ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'default
  c\mf ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  b\mf ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  c\p ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 16/16 {
  \once \override NoteHead.style = #'triangle
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  g\f ^\markup { "(nat., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  c\f ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  b\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'xcircle
  c\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  b\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  c\p ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'triangle
  e\p ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'xcircle
  af\f ^\markup { "+1/4" } ^\markup { "(circ., M:T)" } _\markup { "2" }
  \once \override NoteHead.style = #'default
  c\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  e\pp ^\markup { "-1/8" } ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic
  b\ppp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
}
\break
\tuplet 8/16 {
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'default
  c\mf ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'triangle
  g\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'triangle
  c\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic-mixed
  bf\pp ^\markup { "-1/6" } ^\markup { "(circ., F:M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  e\p ^\markup { "-1/8" } ^\markup { "(nat., M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  g\pp ^\markup { "(circ., F:M)" } _\markup { "6" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\p ^\markup { "(circ., F:M)" } _\markup { "4" }
}
\break
\tuplet 4/16 {
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic
  g\mf ^\markup { "(circ., F:M)" } _\markup { "2" }
  \once \override NoteHead.style = #'harmonic
  c\ff ^\markup { "(*, *)" } _\markup { "0" }
  \once \override NoteHead.style = #'harmonic
  c\mp ^\markup { "(circ., F:M)" } _\markup { "2" }
}
\break
\tuplet 2/16 {
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(nat., M)" } _\markup { "4" }
  \once \override NoteHead.style = #'harmonic-mixed
  c\mf ^\markup { "(nat., M)" } _\markup { "2" }
}
\break
\tuplet 1/16 {
  \once \override NoteHead.style = #'triangle
  c\pp ^\markup { "(nat., M)" } _\markup { "4" }
}


  }

>>
