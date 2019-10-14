\version "2.19.82"
\language "english"

\include "span.ly"

Cello = {
  \autoBeamOff
  \override Beam.damping = #20
  \clef tenor
  \tuplet 1/16 {
    \once \override Hairpin.stencil = #(circ-tip 0.5 0.2)
    b'8 \< ^\markup { \italic { clt } } [
%% ^\markup { XA }
  }
  \tuplet 2/16 {
    b'8 \ppp ^\markup { \italic { light } }
% ^\markup { XB }
    \hideNotes
    \oneBeam
    b'16...
    \unHideNotes
    \hideRest
    r128 ]
  }
  \tuplet 1/16 {
    \pizzBeam
    b'8 [] ^\markup { \italic { pizz } }
%% ^\markup { XC }
  }
  \clef bass
  \tuplet 2/16 {
    b8 [ ^\markup { \italic { clt } } \paren\ppp
%% ^\markup { XD }
    r
  }
  \tuplet 3/16 {
    fs'8 ^\markup { \italic { light } }
%% ^\markup { XE }
    s s16...
    \hideRest
    r128 ]
  }
  \tuplet 4/16 {
    \pizzBeam
    b,8 [] ^\markup { \italic { pizz } }
%% ^\markup { XF }
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,8 []
  }
  \tuplet 5/16 {
    b,8 \paren\ppp \< [ ^\markup { \italic { clt } }
%% ^\markup { XG }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    ds!
    b,8
    s s
  }
  \tuplet 4/16 {
    b,8 ^\markup { \italic { light } }\pp
%% ^\markup { XH }
    s
    fs,8
    s16...
    \hideRest
    r128 ]
  }
  \tuplet 5/16 {
    \pizzBeam
    b,8 [] ^\markup { \italic { pizz } }
%% ^\markup { XI }

    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ds,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b,8 []
  }
  \tuplet 6/16 {
    cs,8 [ ^\markup { \italic { clt } } \paren\pp
%% ^\markup { XJ }
    fs,8
    r
    cs,8
    r r
  }
  \tuplet 7/16 {
    cs,8 ^\markup { \italic { light } }
%% ^\markup { XK }
    fs,8
    r
    cs,8
    fs,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \oneBeam
    as,!16
    s32..
    \hideRest
    r128 ]
  }
  \tuplet 8/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    e,!8 [] ^\markup { \italic { pizz } }
%% ^\markup { XL }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,8 []
  }
  \tuplet 9/16 {
    cs,8 [ ^\markup { \italic { light } } \paren\pp
%% ^\markup { XM }
    fs,8
    r
    gs,8
    cs8
    gs,8
    fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \oneBeam
    as,!16
    s32..
    \hideRest
    r128 ]
  }
  \tuplet 8/16 {
    \pizzBeam
    fs8 [] ^\markup { \italic { pizz } }
%% ^\markup { XN }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as,! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as,! []
    r
  }
  \tuplet 10/16 {
    fs8 \paren\pp \< [ ^\markup { \italic { ord } }
%% ^\markup { XO }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs8
    gs,8
    fs,8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    fs,8
    gs,8 \p
  }
  \tuplet 11/16 {
    fs,8 ^\markup { \italic { light } } \paren\p
%% ^\markup { XP }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    fs,8
    r
    cs,8
    fs,8
    r
    bqs,
    fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    \oneBeam
    cs16
    s32
    \hideRest
    r32 ]

  }
  \tuplet 12/16 {
    \pizzBeam
    cs'8 [] ^\markup { \italic { pizz } }
%% ^\markup { XQ }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,8 []
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs8 []
  }
  \tuplet 13/16 {
    fs,8 [ ^\markup { \italic { ord } }
%% ^\markup { XR }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    fs,8
    dqs,
    gs,8
    bqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    fs,8
    cs,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
  }
  \tuplet 14/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,! ^\markup { \italic { light } } \paren\p
%% ^\markup { XS }
    gqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    a,8
    r r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    e,8
    gqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    \oneBeam
    e16
    s32..
    \hideRest
    r128 ]
  }
  \tuplet 13/16 {
    \pizzBeam
    d8 [] ^\markup { \italic { pizz } }
%% ^\markup { XT }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    atqs []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    atqs, []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
  }
  \tuplet 15/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c! [ ^\markup { \italic { ord } }
%% ^\markup { XU }
    r
    cs8
    d8
    a,8
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    gqs,
    r
    cs8
    r
    a,8
    e,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    atqs,
  }
  \tuplet 16/16 {
    d,8 ^\markup { \italic { light } } \paren\p
%% ^\markup { XV }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    atqs,
    d8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    d8
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    a,8
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    s16.
    \hideRest
    r32 ]
  }
  \tuplet 17/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    c'!8 \paren\p \< [] ^\markup { \italic { pizz } }
%% ^\markup { XW }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    atqs []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ds,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e,8 [] \mp
  }
  \tuplet 16/16 {
    a8 [ ^\markup { \italic { mid } }
%% ^\markup { XX }
    d8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    a,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c,!
    atqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c,!
    d,8
    s s16.
    \hideRest
    r32
    % d,8
  }
  \tuplet 18/16 {
    \pizzBeam
    gqs,8 ] ^\markup { \italic { pizz } } \paren\mp
%% ^\markup { XY }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gqs, []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs,! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e,8 []
  }
  \tuplet 19/16 {
    d8 [ ^\markup { \italic { ord } }
%% ^\markup { XZ }
    r r
    a8
    f,8
    gqs,
    atqs,
    a,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    d8
    a8
    d8
    r
    a8
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    f8
  }
  \tuplet 20/16 {
    d8 ^\markup { \italic { mid } }
%% ^\markup { YA }
    a8
    atqs
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    cs'8
    gqs
    d8
    atqs
    a8
    d8
    r r r
    e,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    r
    e,8
    d,8
    r
    \oneBeam
    e,16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 21/16 {
    \pizzBeam
    gf,8 [] ^\markup { \italic { pizz } } \paren\mp
%% ^\markup { YB }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df,! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e,8 []
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cqf []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df,! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af! []
  }
  \tuplet 22/16 {
    d8 [ ^\markup { \italic { ord } }
%% ^\markup { YC }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    ef8
    r
    f,8
    r
    aqf
    ef8
    r
    e,8
    d8
    cqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af!
    ef8
    f,8
    ef,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    ef,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    ef,8
  }
  \tuplet 21/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,! ^\markup { \italic { mid } }
%% ^\markup { YD }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df,!
    ef,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df,!
    f,8
    aqf,
    bf,8
    ef8
    bf,8
    ef8
    gf8
    e8
    r
    gf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    cqf'
    bf8
    cqf'
    r
    bf8
    \oneBeam
    ef16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 23/16 {
    \pizzBeam
    cqf8 \paren\mp \< [] ^\markup { \italic { pizz } }
%% ^\markup { YE }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf, []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf, []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cqf []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g,! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df! []
  }
  \tuplet 24/16 {
    \override Stem.details.beamed-lengths = #'(6.5)
    f,8 [ ^\markup { \italic { ord } }\mf
%% ^\markup { YF }
    aqf,
    r
    ef,8
    cqf
    f8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    cqf
    gf,8
    bf,8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df,!
    gf,8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a!
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    cqf
    bf8
    \revert Stem.details.beamed-lengths
  }
  \tuplet 25/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g! ^\markup { \italic { mid } }
%% ^\markup { YG }
    f8
    r
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    gf8
    r
    bf,8
    ef8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    bf,8
    r
    ef,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    d8
    cqf
    aqf
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a,!
    e,8
    r
    ef8
    s16.
    \hideRest
    r32 ]
  }
  \tuplet 26/16 {
    \pizzBeam
    ef,8 [] ^\markup { \italic { pizz } } \paren\mf
%% ^\markup { YH }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df'! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cqf []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf, []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g,! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf,8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a,! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af,! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf,8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
  }
  \tuplet 27/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a,! [ ^\markup { \italic { ord } }
%% ^\markup { YI }
    d,8
    ef,8
    gf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    r
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    r
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    bf,8
    aqf,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    f8
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    e,8
    ef8
    bf,8
    aqf,
    d,8
    bf,8
  }
  \tuplet 28/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,! ^\markup { \italic { heavy } }
%% ^\markup { YJ }
    ef,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df,!
    ef,8
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af,!
    bf,8
    aqf,
    ef8
    gf,8
    e8
    gf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    ef,8
    gf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    cqf
    f8
    cqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b,!
    gf,8
    cqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
  }
  \tuplet 29/16 {
    d8 ^\markup { \italic { ord } } \paren\mf
%% ^\markup { YK }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    aqf,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    r
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    c,8
    r
    d8
    b8
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    c,8
    r
    b8
    d'8
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
    bf!
    r
    gtqf
    b8
    r
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af!
    a8
    g8
    c,8
  }
  \tuplet 30/16 {
    b,8 ^\markup { \italic { mid } } \paren\mf \<
%% ^\markup { YL }
    g,8
    r
    c,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    aqf,
    c,8
    gtqf,
    b,8
    aqf
    r
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    aqf,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    r
    g,8
    b8
    g,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    aqf
  }
  \tuplet 31/16 {
    g,8 ^\markup { \italic { heavy } } \f
%% ^\markup { YM }
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    aqf,
    g,8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    g,8
    gtqf,
    b8
    c,8
    g,8
    b8
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    gtqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    b,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
    bf,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    d8
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
    bf,!
    ef8
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
  }
  \tuplet 32/16 {
    d'8 ^\markup { \italic { ord } }\f \>
%% ^\markup { YN }
    c,8
    r
    fqs'
    c,8
    b'8
    c,8
    r
    g'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowup" }
    fs'!
    c,8
    r
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    r
    c,8
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    g,8
    aqf,
    c,8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
    bf!
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
    bf!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    c,8
  }
  \tuplet 16/16 {
    d8 ^\markup { \italic { mid } }\mf \>
%% ^\markup { YO }
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    g,8
    r
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    b8
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    b,8
    d8
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    r
  }
  \tuplet 8/16 {
    c,8 ^\markup { \italic { heavy } }\mp \>
%% ^\markup { YP }
    r r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    g,8
    c8
  }
  \tuplet 4/16 {
    c,8 ^\markup { \italic { mid } }\p \>
%% ^\markup { YQ }
    r
    g,8
    \oneBeam
    c'16
    s32..
    \hideRest
    r128 ]
  }
  \tuplet 2/16 {
    \clef tenor
    \pizzBeam
    c''8 [] ^\markup { \italic { pizz } }\pp
%% ^\markup { YR }
    r
  }
  \tuplet 16/16 {
    \once \override Hairpin.stencil = #(circ-tip 0.5 0.2)
    c''8 [ ^\markup { \italic { clt } }\ppp \>
%% ^\markup { YS }
    s s s s s s s s s s s s s s c''8 \!
    ]
  }

}

% \book {
%   \bookOutputName "Cello"
%   \paper {
%     system-system-spacing.minimum-distance = #20
%     system-separator-markup = \slashSeparator
%   }
%   \score {
%     \new StaffGroup <<
%       \new Staff {
%         \time 4/2
%         \clef bass
%         \autoBeamOff
%         \Cello
%       }
%     >>
%     \layout {
%       \context {
%         \Score
%         proportionalNotationDuration = #(ly:make-moment 1/20)
%       }
%       \context {
%         \Staff
%         \accidentalStyle Score.dodecaphonic
%       }
%       \context {
%         \Voice
%         \override TupletNumber.text = #tuplet-number::calc-fraction-text
%         \override TupletBracket.breakable = ##t
%         \remove "Forbid_line_break_engraver"
%         \override Beam.breakable = ##t
%       }
%     }
%   }
% }
