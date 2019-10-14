\version "2.19.82"
\language "english"

\include "span.ly"

#(set-global-staff-size 20)%'landscape)

Viola = {
  \autoBeamOff
  \override Beam.damping = #20
  \tuplet 1/12 {
    \once \override Hairpin.stencil = #(circ-tip 0.5 0.2)
    b'8 \< ^\markup { \italic { clt } } [
%% ^\markup { XA }
  }
  \tuplet 2/12 {
    b'8 \ppp ^\markup { \italic { light } }
%% ^\markup { XB }
    \once \set stemRightBeamCount = 1
    \hideNotes
    b'16...
    \unHideNotes
    \hideRest
    r128 ]
  }
  \tuplet 3/12 {
    \pizzBeam
    b'8 [] ^\markup { \italic { pizz } }
% ^\markup { XC }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'8 []
  }
  \tuplet 1/12 {
    b8 \paren\ppp \< [ ^\markup { \italic { clt } }
%% ^\markup { XD }
  }
  \tuplet 2/12 {
    b'8 ^\markup { \italic { light } }\pp
%% ^\markup { XE }
    s16...
    \hideRest
    r128 ]
  }
  \tuplet 3/12 {
    \pizzBeam
    bf'8 [] ^\markup { \italic { pizz } }
%% ^\markup { XF }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    r
  }
  \tuplet 4/12 {
    bf'8 [ ^\markup { \italic { light } }
%% ^\markup { XG }
    f'8
    bf'8
    \oneBeam
    f'16
    s32.
    \hideRest
    r64 ]
  }
  \tuplet 5/12 {
    \pizzBeam
    bf'8 [] ^\markup { \italic { pizz } }
%% ^\markup { XH }
    r r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f8 []
  }
  \tuplet 3/12 {
    bf8 \paren\pp \< [ ^\markup { \italic { ord } }
%% ^\markup { XI }
    r r
  }
  \tuplet 4/12 {
    a8 ^\markup { \italic { light } }\p
%% ^\markup { XJ }
    r
    e'8
    s16..
    \hideRest
    r64 ]
  }
  \tuplet 5/12 {
    \pizzBeam
    a8 [] ^\markup { \italic { pizz } }
%% ^\markup { XK }
    r r r r
  }
  \tuplet 6/12 {
    a8 [ ^\markup { \italic { ord } }
%% ^\markup { XL }
    r r
    e8
    a8
    e8
  }
  \tuplet 5/12 {
    a8 ^\markup { \italic { light } } \paren\p
%% ^\markup { XM }
    r
    e8
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
  }
  \tuplet 6/12 {
    ef8 ^\markup { \italic { ord } } \<
%% ^\markup { XN }
    r
    af8
    ef8
    r r
  }
  \tuplet 7/12 {
    ef8 ^\markup { \italic { mid } }\mp
%% ^\markup { XO }
    af8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
    af8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
    \oneBeam
    af16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 8/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    c'!8 [] ^\markup { \italic { pizz } }
%% ^\markup { XP }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
  }
  \tuplet 7/12 {
    ef8 [ ^\markup { \italic { ord } } \paren\mp
%% ^\markup { XQ }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    r
    af'8
    r
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
  }
  \tuplet 8/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b! ^\markup { \italic { mid } }
%% ^\markup { XR }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    d8
    g8
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \oneBeam
    b!16
    s32.
    \hideRest
    r64 ]
  }
  \tuplet 9/12 {
    \pizzBeam
    d'8 [] \paren\mp \< ^\markup { \italic { pizz } }
%% ^\markup { XS }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    r
  }
  \tuplet 10/12 {
    g8 [ ^\markup { \italic { mid } }\mf
%% ^\markup { XT }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    r
    g8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    r r r
    a8
  }
  \tuplet 9/12 {
    g8 ^\markup { \italic { heavy } } \paren\mf
%% ^\markup { XU }
    r r
    a'8
    g8
    r r
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
  }
  \tuplet 10/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'! ^\markup { \italic { ord } }
%% ^\markup { XV }
    cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    r r
    fs'8
    cs8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs'8
  }
  \tuplet 11/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as! \paren\mf \< ^\markup { \italic { mid } }
%% ^\markup { XW }
    fs8
    r
    cs8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    cs'8
    bqs
    fs8
    cs8
    fs8
  }
  \tuplet 12/12 {
    cs8 ^\markup { \italic { heavy } }\f
%% ^\markup { XX }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    bqs
    cs''8
    bqs
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
  }
  \tuplet 13/12 {
    cs'8 ^\markup { \italic { ord } } \paren\f
%% ^\markup { XY }
    dqs'
    fs8
    cs8
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    dqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    cs8
    r
  }
  \tuplet 11/12 {
    gs8 ^\markup { \italic { mid } }
%% ^\markup { XZ }
    bqf
    cs'8
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    fs8
    cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    bqs
    fs'8
    r
  }
  \tuplet 12/12 {
    c8 ^\markup { \italic { \halign #-0.35 heavy } }
%% ^\markup { YA }
    f8
    r
    c'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'8
    c'8
    r
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    r
    f8
  }
  \tuplet 13/12 {
    c8 ^\markup { \italic { ord } }
%% ^\markup { YB }
    r
    bqf
    dqf'
    bqf
    f'8
    c'8
    f'8
    c'8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    f'8
    bqf'
  }
  \tuplet 14/12 {
    bqf' ^\markup { \italic { mid } } \paren\f
%% ^\markup { YC }
    f'8
    bqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    c8
    dqf'
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    c8
    f8
    dqf
    f8
    \oneBeam
    dqf16
    \hideRest
    r16 ]
  }
  \tuplet 13/12 {
    \pizzBeam
    dqf'8 [] ^\markup { \italic { pizz } }
%% ^\markup { YD }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bqf [] \paren\f \>
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bqf' []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c8 []
  }
  \tuplet 14/12 {
    fs8 [ ^\markup { \italic { \halign #-0.5 "mid" } }\mf
%% ^\markup { YE }
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d!
    b8
    r
    e'8
    aqs
    b8
    fs8
    b8
    e8
    aqs
    cqs'
    e'8
  }
  \tuplet 15/12 {
    b8 ^\markup { \italic { heavy } }
%% ^\markup { YF }
    r
    fs8
    e'8
    r
    b'8
    r
    cqs
    fs8
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d!
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \oneBeam
    gs!16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 16/12 {
    \pizzBeam
    ds8 [] ^\markup { \italic { pizz } } \paren\mf
%% ^\markup { YG }
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ds8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqs []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b8 []
  }
  \tuplet 15/12 {
    b8 [ ^\markup { \italic { mid } }
%% ^\markup { YH }
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    e8
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    r
    cqs'
    e8
    cqs
    r
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
  }
  \tuplet 16/12 {
    d'8 ^\markup { \italic { \halign #-0.3 heavy } }
%% ^\markup { YI }
    r
    bf'8
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    r
    bf8
    r
    f'8
    bf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    r r
    aqf'
    bf'8
    \oneBeam
    aqf'16
    \hideRest
    r16 ]
  }
  \tuplet 17/12 {
    \pizzBeam
    bf'8 [] ^\markup { \italic { \halign #-0.5 pizz } }
%% ^\markup { YJ }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
  }
  \tuplet 18/12 {
    f8 [ \paren\mf \> ^\markup { \italic { mid } }
%% ^\markup { YK }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    d8
    aqf
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    bf'8
    aqf'
    ef8
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    bf8
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    cqf'
    f8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
  }
  \tuplet 17/12 {
    bf8 ^\markup { \italic { heavy } }\mp
%% ^\markup { YL }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    ef8
    cqf'
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    e'8
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    r
    f8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \oneBeam
    df!16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 18/12 {
    \pizzBeam
    a8 [] ^\markup { \italic { \halign #-0.5 pizz } }
%% ^\markup { YM }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    atqf []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    atqs' []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    atqs []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
  }
  \tuplet 19/12 {
    a'8 [ ^\markup { \italic { heavy } }
%% ^\markup { YN }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    e'8
    r
    d'8
    r
    e'8
    atqs'
    gqs
    ds'8
    atqs'
    d'8
    ds'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    cs8
    a8
    ds8
    \oneBeam
    gqs16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 20/12 {
    \pizzBeam
    f'8 [] ^\markup { \italic { pizz } } \paren\mp
%% ^\markup { YO }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'! []
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gqs []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ds8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e8 []
  }
  \tuplet 19/12 {
    \pizzBeam
    d'8 \clb [] ^\markup { \italic { clb } }
% ^\markup { YP }
    s s
    \pizzBeam
    atqs \clb []
    \pizzBeam
    e8 \clb []
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    ds8 \clb []
    \pizzBeam
    cs8 \clb []
    \pizzBeam
    gqs \clb []
    \pizzBeam
    atqs \clb []
    s
    \pizzBeam
    d'8 \clb []
    s
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    c'! \clb []
    \pizzBeam
    ds8 \clb []
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    a'8 \clb []
    \pizzBeam
    cs8 \clb []
    \pizzBeam
    d'8 \clb []
  }
  \tuplet 18/12 {
    a'8 [ ^\markup { \italic { \halign #-0.2 heavy } }
%% ^\markup { YQ }
    atqs'
    e'8
    d'8
    r r
    e'8
    r
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    d'8
    r
    \override Stem.details.beamed-lengths = #'(4.5)
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    d'8
    e'8
    d'8
    s16.
    \hideRest
    r32 ]
    \revert Stem.details.beamed-lengths
  }
  \tuplet 17/12 {
    \pizzBeam
    f'8 [] \paren\mp \> ^\markup { \italic { pizz } }
%% ^\markup { YR }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 [] \p
    r
  }
  \tuplet 16/12 {
    \pizzBeam
    cqf''8 \clb [] ^\markup { \italic { clb } } \paren\p
%% ^\markup { YS }
    \pizzBeam
    bf'8 \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \pizzBeam
    df! \clb []
    \pizzBeam
    ef8 \clb []
    \pizzBeam
    bf'8 \clb []
    \pizzBeam
    ef8 \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \pizzBeam
    df'! \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    g! \clb []
    \pizzBeam
    d8 \clb []
    \pizzBeam
    ef'8 \clb []
    \pizzBeam
    bf8 \clb []
    s s
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \pizzBeam
    df! \clb []
    \pizzBeam
    aqf \clb []
    \pizzBeam
    f'8 \clb []
  }
  \tuplet 15/12 {
    ef'8 [ ^\markup { \italic { heavy } }
%% ^\markup { YT }
    r r
    aqf
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    cqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    bf8
    f'8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    \oneBeam
    ef'16
    s32
    \hideRest
    r32 ]

  }
  \tuplet 14/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \pizzBeam
    df'!8 [] ^\markup { \italic { \halign #-0.5 pizz } }
%% ^\markup { YU }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef8 []
  }
  \tuplet 13/12 {
    \pizzBeam
    atqf8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { YV }
    \pizzBeam
    a8 \clb []
    s
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    a'8 \clb []
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    a'8 \clb []
    s
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    atqs \clb []
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    e'8 \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    fs! \clb []
  }
  \tuplet 12/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \override Stem.details.beamed-lengths = #'(4.5)
    fs!8 [ ^\markup { \italic { heavy } } \paren\p
%% ^\markup { YW }
    gqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    a'8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    e'8 ]
    \revert Stem.details.beamed-lengths
  }
  \tuplet 11/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    fs!8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { YX }
    s
    \pizzBeam
    gqs []
    \pizzBeam
    d8 \clb []
    s
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    fs! \clb []
    \pizzBeam
    d8 \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    fs! \clb []
    s
    \pizzBeam
    a8 \clb []
    s
  }
  \tuplet 10/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!8 \paren\p \> [ ^\markup { \italic { clt } }
%% ^\markup { YY }
    d'8
    a'8
    d'8
    a'8
    d'8
    e8
    r
    \override Stem.details.beamed-lengths = #'(4)
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \oneBeam
    c''!16
    s32
    \hideRest
    r32 ]
    \revert Stem.details.beamed-lengths
  }
  \tuplet 9/12 {
    \pizzBeam
    cs''8 [] ^\markup { \italic { pizz } }\pp
%% ^\markup { YZ }
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    f'! []
    \pizzBeam
    ds''8 []
    \pizzBeam
    gs'8 []
    \pizzBeam
    cs''8 []
    \pizzBeam
    gs'8 []
    \pizzBeam
    cs''8 []
    r
  }
  \tuplet 8/12 {
    \pizzBeam
    cs8 \clb [] ^\markup { \italic { clb } } \paren\pp
%% ^\markup { ZA }
    s s s
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    f!
    -\tweak X-offset #-0.5
    -\clb []
    \pizzBeam
    cs'8 \clb []
    \pizzBeam
    gs8
    -\tweak X-offset #-0.5
    \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    b! \clb []
  }
  \tuplet 7/12 {
    cs'8 [ ^\markup { \italic { \halign #0.1 clt } }
%% ^\markup { ZB }
    r r
    \override Stem.details.beamed-lengths = #'(4.5)
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    gs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    s16..
    \hideRest
    r64 ]
    \revert Stem.details.beamed-lengths
  }
  \tuplet 6/12 {
    \pizzBeam
    cs8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZC }
    r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs8 []
  }
  \tuplet 1/12 {
    \pizzBeam
    c'8
    -\tweak X-offset #-0.5
    \clb [] ^\markup { \italic { clb } }
%% ^\markup { ZD }
  }
  \tuplet 4/12 {
    g8 [ ^\markup { \italic { clt } } \paren\pp
%% ^\markup { ZE }
    c8
    r
    \oneBeam
    g16
    s32.
    \hideRest
    r64 ]
  }
  \tuplet 4/12 {
    \pizzBeam
    \syncSpan #-27 #5 #'(-2.5 . 5)
    c8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZF }
    \startGroup
    r \stopGroup r r
  }
  \tuplet 1/12 {
    \pizzBeam
    c''8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { ZG }
  }
  \tuplet 12/12 {
    % \once \override Hairpin.circled-tip = ##t
    \once \override Hairpin.stencil = #(circ-tip 0.5 0.2)
    c''8 [ ^\markup { \italic { clt } }\ppp \>
%% ^\markup { ZH }
    s s s s s s s s s s c''8 \! ]
  }
}

% \book {
%   \bookOutputName "Viola"
%   \paper {
%     system-system-spacing.minimum-distance = #20
%     system-separator-markup = \slashSeparator
%   }
%   \score {
%     \new StaffGroup <<
%       \new Staff {
%         \time 4/2
%         \clef alto
%         \autoBeamOff
%         << \Viola { \repeat unfold 45 { s1 s1 \break } } >>

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
%         \override Glissando.breakable = ##t
%       }
%     }
%   }
% }
