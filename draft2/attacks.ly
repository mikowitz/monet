\version "2.19.82"
\language "english"

\paper {
    tagline = ##f
}

#(define upbow-stil
   (make-path-stencil
    '(
      moveto 0 1.6
      lineto 0.2 1.6
      lineto 0.2 0
      lineto 0 0
      closepath
      moveto 0.7 1.3
      lineto 0.9 1.3
      lineto 0.9 0.3
      lineto 0.7 0.3
      closepath
      moveto 1.4 1.1
      lineto 1.6 1.1
      lineto 1.6 0.5
      lineto 1.4 0.5
      closepath
      moveto 2.1 0.9
      lineto 2.3 0.9
      lineto 2.3 0.7
      lineto 2.1 0.7
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
             (X-offset . 0.8)
             (avoid-slur . around)
             (direction . ,UP)))
      )))


clb = #(make-articulation "clb")

\new Staff \with {
  \remove "Time_signature_engraver"
} {
  \once \omit TimeSignature
  \time 9/2
  s4
  c''8 ^\markup { \italic "arco / col legno tratto (clt)" } [ s1
  \once \omit Rest
  r8 ]
  s2
  \once \set stemLeftBeamCount = #0
  \once \set stemRightBeamCount = #1
  c''8 [] \clb ^\markup { \raise #3 { \italic "col legno battuto (clb)" } }
  s1
  s2
  \once \set stemLeftBeamCount = #0
  \once \set stemRightBeamCount = #1
  c''8 [] ^\markup { \italic "pizz." }
  s4
}
