\version "2.19.82"
\language "english"

\include "span.ly"

#(set-global-staff-size 20)%'landscape)

ViolinTwo = {
  \autoBeamOff
  \override Beam.damping = #20
  \tuplet 1/15 {
    \once \override Hairpin.stencil = #(circ-tip 0.3 0.1)
    b'8 \< ^\markup { \italic { clt } }  [
%% ^\markup { "XA" }
  }
  \tuplet 2/15 {
    b'8 \ppp ^\markup { \italic { light } }
%% ^\markup { XB }
    \hideNotes
    \oneBeam
    b'16...
    \unHideNotes
    \hideRest
    r128 ]
  }
  \tuplet 3/15 {
    \pizzBeam
    b'8 [] ^\markup { \italic { pizz } }
% ^\markup { XC }
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
  }
  \tuplet 4/15 {
    b'8 [ ^\markup { \italic { clt } }
%% ^\markup { XD }
    r
    fs'8 \paren\ppp
    b'8
  }
  \tuplet 5/15 {
    \syncSpan #-21 #7 #'(-2 . 5.5)
    bf'8 ^\markup { \italic { light } }
%% ^\markup { XE }
    \startGroup
    r
    \stopGroup
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #1
    f'16
    s32.
    \hideRest
    r64 ]
  }
  \tuplet 6/15 {
    \pizzBeam
    f'8 [] ^\markup { \italic { pizz } } \paren\ppp \<
%% ^\markup { XF }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
  }
  \tuplet 7/15 {
    bf'8 [ ^\markup { \italic { clt } }\pp
%% ^\markup { XG }
    f'8
    bf'8
    f'8 \paren\pp
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    bf'8
  }
  \tuplet 8/15 {
    a'8 ^\markup { \italic { light } }
%% ^\markup { XH }
    e''8
    a'8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    e'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = 1
    \once \set stemLeftBeamCount = 1
    cs''!16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 9/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    g'!8 [] ^\markup { \italic { pizz } }
%% ^\markup { XI }
    \pizzBeam
    a8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    cs'! []
    \pizzBeam
    a8 []
    \pizzBeam
    e'8 []
    \pizzBeam
    a8 []
    \pizzBeam
    b8 []
    r r
  }
  \tuplet 10/15 {
    \override Stem.details.beamed-lengths = #'(5)
    a''8 [ ^\markup { \italic { light } }
%% ^\markup { XJ }
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    a''8
    \revert Stem.details.beamed-lengths
    e''8 \paren\pp
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs''!
    \oneBeam
    b'16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 11/15 {
    \pizzBeam
    dqf''8 [] ^\markup { \italic { pizz } }
%% ^\markup { XK }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    dqf'' []
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    dqf' []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af8 []
  }
  \tuplet 12/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'! [ ^\markup { \italic { ord } }
%% ^\markup { XL }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    af'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    r
    dqf''
    af'8
    r r
    ef'8
    r
  }
  \tuplet 13/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'! \paren\pp \< ^\markup { \italic { \halign #-0.6 light } }
%% ^\markup { XM }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    dqf'
    af'8
    dqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    r
    bf8
    fqf'
    af8
    r
    % af'8
    ef'8
    \oneBeam
    af16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 14/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    b!8 [] ^\markup { \italic { pizz } }\p
%% ^\markup { XN }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    \syncSpan #-21 #5 #'(-2 . 3)
    d''8 [] \startGroup
    r \stopGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'! []
    r
    r32
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    s16.
  }
  \tuplet 15/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!8 [ ^\markup { \italic { ord } }
%% ^\markup { XO }
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    g8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    a8
    g8
    r
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    d'8
  }
  \tuplet 16/15 {
    cqs' ^\markup { \italic { light } }
%% ^\markup { XP }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    g8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    a8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \syncSpan #-22 #4 #'(-2 . 3)
    b!16 \startGroup
    r16 \stopGroup
    fs'8
    d'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    g8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \oneBeam
    b!16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 17/15 {
    \pizzBeam
    f'8 [] ^\markup { \italic { pizz } } \paren\p
%% ^\markup { XQ }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    \syncSpan #-21 #5 #'(-2.5 . 3.5)
    fs'16 [] \startGroup
    r16 \stopGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'!8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs''8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    dqs'' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g''8 []
  }
  \tuplet 18/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'! [ ^\markup { \italic { ord } }
%% ^\markup { XR }
    cs''8
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    bqs'
    gs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    bqs'
    cs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    dqs'
    g8
    fs'8
    dqs'
    fs'8
    cs'8
    f''8
    cs''8
  }
  \tuplet 19/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'! ^\markup { \italic { light } }
%% ^\markup { XS }
    gs8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as! \paren\p \<
    bqs
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    f'8
    g8
    fs'8
    gs8
    fs'8
    r
    gs8
    fs'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs'8
  }
  \tuplet 20/15 {
    fs'8 ^\markup { \italic { ord } }\mp
%% ^\markup { XT }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    r
    r
    r
    dqs'
    \paren\mp
    cs'8
    gs'8
    cs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    gs'8
    fs'8
    gs'8
    r
    f'8
    g'8
    gs'8
    f'8
    cs'8
  }
  \tuplet 19/15 {
    ctqs' ^\markup { \italic { mid } }
%% ^\markup { XU }
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    c'8
    g'8
    f'8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    e'8
    dqf'
    gf'8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    r
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'8
    c'8
    \oneBeam
    f'16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 18/15 {
    \pizzBeam
    f'8 [] ^\markup { \italic { pizz } }
%% ^\markup { XV }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    dqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bqf' []
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
    c'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'! []
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
    bqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    r
  }
  \tuplet 17/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'! [ ^\markup { \italic { ord } }
%% ^\markup { XW }
    f'8
    bqf'
    c'8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    r
    c'8 \paren\mp
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    f'8
    r
    gf'8
    f'8
    c'8
    g'8
    f'8
    bqf'
  }
  \tuplet 16/15 {
    e'8 ^\markup { \italic { mid } }
%% ^\markup { XX }
    b'8
    aqs'
    b'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    e'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    fs'8
    aqs'
    r
    fs'8
    e'8
    ds'8
    e'8
    s16.
    \hideRest
    r32 ]
  }
  \tuplet 15/15 {
    \pizzBeam
    e'8 [] ^\markup { \italic { \halign #-0.5 pizz } }
%% ^\markup { XY }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cqs' []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs'! [] \paren\mp \<
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cqs' []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'! []
    r
  }
  \tuplet 14/15 {
    e'8 [ ^\markup { \italic { \halign #-0.5 ord } }\mf
%% ^\markup { XZ }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    b'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    e'8
    b'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'! \paren\mf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
  }
  \tuplet 13/15 {
    e'8 ^\markup { \italic { mid } }
%% ^\markup { YA }
    fs'8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    aqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    aqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    r
    b'8
    e'8
    s s16.
    \hideRest
    r32 ]
  }
  \tuplet 12/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    g'!8 [] ^\markup { \italic { pizz } }
%% ^\markup { YB }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf' []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    aqf' []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
  }
  \tuplet 11/15 {
    \syncSpan #-21 #6 #'(-2.5 . 3.5)
    f'8 [ ^\markup { \italic { \halign #-0.5 mid } }
%% ^\markup { YC }
    \startGroup
    ef'8 \stopGroup
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    f'8
    ef'8
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    bf'8 \paren\mf
    ef'8
  }
  \tuplet 12/15 {
    ef'8 ^\markup { \italic { heavy } }
%% ^\markup { YD }
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    ef'8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    bf'8
    r
  }
  \tuplet 11/15 {
    e'8 \paren\mf \< ^\markup { \italic { ord } }
%% ^\markup { YE }
    a'8
    d'8
    r r
    a'8
    d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    d'8 \f
    r
  }
  \tuplet 10/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \override Stem.details.beamed-lengths = #'(5.5)
    fs'! ^\markup { \italic { mid } }
%% ^\markup { YF }
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    e'8
    d'8
    r
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a'8
    d'8
    \revert Stem.details.beamed-lengths
  }
  \tuplet 9/15 {
    d'8 ^\markup { \italic { heavy } } \paren\f
%% ^\markup { YG }
    e'8
    r
    d''8
    r
    e''8
    d'''8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'''!
  }
  \tuplet 10/15 {
    d'''8 ^\markup { \italic { ord } }
%% ^\markup { YH }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'''! \paren\f \>
    d'''8
    a''8
    r r r
    d'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'''!
    e'''8
  }
  \tuplet 9/15 {
    ds'''8 ^\markup { \italic { mid } }\mf
%% ^\markup { YI }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    f'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    f'''8
    r
    ef'8
    f'''8
    ef'8
  }
  \tuplet 8/15 {
    bf''8 ^\markup { \italic { heavy } }
%% ^\markup { YJ }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    r
    ef''8
    \paren\mf
    r
    bf8
    ef''8
    r
  }
  \tuplet 7/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''! ^\markup { \italic { mid } }
%% ^\markup { YK }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    ef'8 \paren\mf \>
    bf''8
    ef'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
  }
  \tuplet 8/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''! ^\markup { \italic { heavy } }\mp
%% ^\markup { YL }
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    ef'8
    s16.
    \hideRest
    r32 ]
  }
  \tuplet 7/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \pizzBeam
    c''!8 [] ^\markup { \italic { pizz } }
%% ^\markup { YM }
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''! [] \paren\mp
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'''! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''! []
  }
  \tuplet 6/15 {
    a''8 \paren\mp \> [ ^\markup { \italic { mid } }
%% ^\markup { YN }
    d''8
    r
    a''8
    s s16..
    \hideRest
    r64 ]
  }
  \tuplet 5/15 {
    \pizzBeam
    a''8 [] ^\markup { \italic { \halign #-0.3 pizz } }\p
%% ^\markup { YO }
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d''8 []
    r
  }
  \tuplet 6/15 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs'8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { YP }
    s
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'8 \clb []
    s s s
  }
  \tuplet 5/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \syncSpan #-45 #9 #'(-4 . 2.5)
    \once \set stemRightBeamCount = 1
    f''!16 \paren\p \> ^\markup { \italic { \halign #0.2 heavy } } [
%% ^\markup { YQ }
    \startGroup
    \once \set stemRightBeamCount = 1
    \once \set stemLeftBeamCount = 1

    r16 \stopGroup
    \syncSpan #-45 #7 #'(-2.5 . 2.5)
    \once \set stemRightBeamCount = 1
    \once \set stemLeftBeamCount = 1
    gs'16 \startGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    r16 \stopGroup
    \syncSpan #-45 #7 #'(-2.5 . 2.5)
    \once \set stemRightBeamCount = 1
    f'!8 \startGroup
    cs'8 \stopGroup
    \hideNotes
    \oneBeam
    cs''16..
    \unHideNotes
    \hideRest
    r64 ]
  }
  \tuplet 4/15 {
    \pizzBeam
    cs'8 [] ^\markup { \italic { pizz } }\pp
%% ^\markup { YR }
    r r r
  }
  \tuplet 3/15 {
    \syncSpan #-22 #5 #'(-2.5 . 3)
    g8 [ ^\markup { \italic { clt } }
%% ^\markup { YS }
    \startGroup
    c'8 \stopGroup
    s16
    \hideNotes
    \oneBeam
    c'32..
    \unHideNotes
    \hideRest
    r128 ]
  }
  \tuplet 4/15 {
    \pizzBeam
    c'8 [] ^\markup { \italic { pizz } } \paren\pp
%% ^\markup { YT }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g8 []
  }
  \tuplet 2/15 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c''8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { YU }
    s
  }
  \tuplet 15/15 {
    \once \override Hairpin.stencil = #(circ-tip 0.5 0.2)
    c''8 [ ^\markup { \italic { clt } }\ppp \>
%% ^\markup { YV }
    s s s s s s s s s s s s s c''8\! ]
  }
}

% \book {
%   \bookOutputName "ViolinTwo"
%   \paper {
%     system-system-spacing.minimum-distance = #20
%     system-separator-markup = \slashSeparator
%   }
%   \score {
%     \new StaffGroup <<
%       \new Staff {
%         \time 4/2
%         \clef treble
%         \autoBeamOff
%         \omit TupletBracket
%         \omit TupletNumber
%         <<
%           \ViolinTwo
%           { \repeat unfold 45 { s1 s1 \break } }
%         >>
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
