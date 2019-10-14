\version "2.19.82"
\language "english"

\include "span.ly"

ViolinOne = {
  \autoBeamOff
  \override Beam.damping = #20
  \tuplet 1/8 {
    \once \override Hairpin.stencil = #(circ-tip 0.3 0.1)
    b'8 \< ^\markup { \italic { clt } }  [
%% ^\markup { XA }
  }
  \tuplet 8/8 {
    b'8 \ppp ^\markup { \italic { light } }
%% ^\markup { XB }
    s s s s s s
    s16.
    \once \omit Rest
    r32 ]
  }
  \tuplet 2/8 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'8 []  ^\markup { \italic { pizz } }
% ^\markup { XC }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b''8 []
  }
  \tuplet 3/8 {
    \syncSpan #-38 #6 #'(-2 . 4.5)
    b'8 [ ^\markup { \italic clt }
% ^\markup { XD }
    \startGroup
    \once \omit Rest
    r8
    \stopGroup
    s8
  }
  \tuplet 2/8 {
    b'8 ^\markup { \italic { light } }
%% ^\markup { XE }
    s16...
    \once \omit Rest
    r128 ]
  }
  \tuplet 3/8 {
    \once \set stemRightBeamCount = #1
    \set stemLeftBeamCount = #0
    \syncSpan #-22 #7 #'(-2.1 . 4.5)
    fs''16 [] ^\markup { \italic { pizz } }
%% ^\markup { XF }
    \startGroup
    r16
    \stopGroup
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    b'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
  }
  \tuplet 2/8 {
    b'8 \paren\ppp \< [ ^\markup { \italic { clt } }
%% ^\markup { XG }
    r
  }
  \tuplet 3/8 {
    b'8 ^\markup { \italic { light } }
%% ^\markup { XH }
    fs''8
    \once \set stemRightBeamCount = 1
    b'16
    s32..
    \once \omit Rest
    \once \set stemLeftBeamCount = 1
    r128
    ]
  }
  \tuplet 4/8 {
    \pizzBeam
    b'8 [] ^\markup { \italic { pizz } }\pp
%% ^\markup { XI }
    \pizzBeam
    fs''8 []
    \pizzBeam
    b'8 []
    \pizzBeam
    r
    % b''8
  }
  \tuplet 3/8 {
    \syncSpan #-38 #5 #'(-2.2 . 5)
    \once \set stemRightBeamCount = #1
    bf'16 [ ^\markup { \italic { clt } }
%% ^\markup { XJ }
    \startGroup
    r16
    \stopGroup
    f''8
    bf'8
  }
  \tuplet 4/8 {
    bf'8 ^\markup { \italic { light } }
%% ^\markup { XK }
    f''8
    bf'8
    \once \set stemRightBeamCount = 1
    f''16
    s32..
    \once \omit Rest
    \once \set stemLeftBeamCount = 1
    r128 ]
  }
  \tuplet 5/8 {
    \pizzBeam
    bf''8 [] ^\markup { \italic { pizz } }
%% ^\markup { XL }
    \pizzBeam
    f''8 []
    \pizzBeam
    bf''8 []
    r
    r
  }
  \tuplet 4/8 {
    f''8 [ ^\markup { \italic { light } } \paren\pp
%% ^\markup { XM }
    bf''8
    s
    s16...
    \once \omit Rest
    r128 ]
  }
  \tuplet 5/8 {
    \pizzBeam
    bf''8 [] ^\markup { \italic { pizz } }
%% ^\markup { XN }
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf''8 []
  }
  \tuplet 6/8 {
    a''8 [ ^\markup { \italic { ord } }
%% ^\markup { XO }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    a''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    a''8
    r
  }
  \tuplet 5/8 {
    \syncSpan #-56 #6 #'(-2 . 5)
    \once \set stemRightBeamCount = 1
    a'16 ^\markup { \italic { \halign #-0.6 light } }
%% ^\markup { XP }
    \startGroup
    r16
    \stopGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!8
    r r
    \once \set stemRightBeamCount = #1
    e''16
    s32..
    \once \omit Rest
    \once \set stemLeftBeamCount = #1
    r128 ]
  }
  \tuplet 6/8 {
    \pizzBeam
    a''8 \paren\pp \< [] ^\markup { \italic { pizz } }
%% ^\markup { XT }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e''8 []
    r
  }
  \tuplet 7/8 {
    \override Stem.details.beamed-lengths = #'(7)
    a'8 [ ^\markup { \italic { ord } }\p
%% ^\markup { XU }
    e''8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
    r
    e''8
    a''8
    \revert Stem.details.beamed-lengths
  }
  \tuplet 6/8 {
    a''8 ^\markup { \italic { light } } \paren\p
%% ^\markup { XV }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    e''8
    a''8
    e''8
    s16...
    \once \omit Rest
    r128 ]
  }
  \tuplet 7/8 {
    \pizzBeam
    \syncSpan #-57 #7 #'(-2.2 . 4.5)
    af''8 [] ^\markup { \italic { pizz } }
%% ^\markup { XW }
    \startGroup
    r
    \stopGroup
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af''8 []
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
  }
  \tuplet 8/8 {
    ef'8 [ ^\markup { \italic { ord } }
%% ^\markup { XX }
    af'8
    r r
    ef'8
    af'8
    ef'8
    af'8 ^\markup { \italic { light } }
  }
  \tuplet 7/8 {
    r r
    ef'8
%% ^\markup { XY }
    af'8
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    \once \set stemRightBeamCount = 1
    ef'16
    s32...
    \once \omit Rest
    \once \set stemLeftBeamCount = 1
    r128 ]
  }
  \tuplet 8/8 {
    \pizzBeam
    ef''8 [] ^\markup { \italic { pizz } }
%% ^\markup { XZ }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gf'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    af'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    \syncSpan #-40 #5 #'(-2.5 . 4.5)
    af'8 [] \startGroup
    r \stopGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    r
  }
  \tuplet 9/8 {
    \syncSpan #-56 #5 #'(-2.5 . 3.5)
    af'8 [ ^\markup { \italic { \halign #-0.5 ord } }
%% ^\markup { YA }
    \startGroup
    r \stopGroup r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    r
    ef''8
    af'8
    r r
  }
  \tuplet 8/8 {
    d''8 ^\markup { \italic { light } } \paren\p
%% ^\markup { YB }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''!
    g''8
    r r
    d''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''!
    \once \set stemRightBeamCount = 1
    d'''16
    s32..
    \once \set stemLeftBeamCount = 1
    \once \omit Rest
    r128 ]
  }
  \tuplet 9/8 {
    \pizzBeam
    g''8 [] \< ^\markup { \italic { pizz } }
%% ^\markup { YC }
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g''8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g''8 [] \mp
  }
  \tuplet 10/8 {
    g''8 [ ^\markup { \italic { mid } }
%% ^\markup { YD }
    a''8
    r
    g'8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b''!
    d'''8
    g'8
    \once \set stemRightBeamCount = 1
    d'16
    s32
    \once \omit Rest
    \once \set stemLeftBeamCount = 1
    r32 ]
  }
  \tuplet 9/8 {
    \pizzBeam
    \syncSpan #-56 #5 #'(-2.6 . 4.5)
    \once \set stemRightBeamCount = #1
    d''16 [] ^\markup { \italic { pizz } }
%% ^\markup { YE }
    \startGroup
    r16 \stopGroup
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g''8 []
    r r r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d''8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g''8 []
  }
  \tuplet 10/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b''! [ ^\markup { \italic { ord } }
%% ^\markup { YF }
    a''8
    r r
    g'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''!
    g''8
    r
  }
  \tuplet 11/8 {
    fs''8 ^\markup { \italic { mid } }
%% ^\markup { YG }
    bqs'
    r
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    fs''8
    bqs'
    gs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    \once \set stemRightBeamCount = 1
    fs''16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 10/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    as''!8 [] ^\markup { \italic { pizz } } \paren\mp
%% ^\markup { YH }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    r
  }
  \tuplet 11/8 {
    fs'''8 [ ^\markup { \italic { ord } }
%% ^\markup { YI }
    r
    gs''8
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    cs''8
    fs'8
    r
    bqs'
    fs'8
    bqs'
  }
  \tuplet 12/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \override Stem.details.beamed-lengths = #'(6.5)
    as'! ^\markup { \italic { mid } }
%% ^\markup { YJ }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    cs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    cs'''8
    fs''8
    cs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = 1
    \syncSpan #-22 #6 #'(-2.5 . 3)
    as''!16
    \startGroup
    s32
    \once \set stemLeftBeamCount = 1
    \once \omit Rest
    r32 ] \stopGroup
    \revert Stem.details.beamed-lengths
  }
  \tuplet 11/8 {
    \pizzBeam
    bqs'8 [] ^\markup { \italic { pizz } }
%% ^\markup { YK }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as''! []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs''8 []
  }
  \tuplet 12/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \override Stem.details.beamed-lengths = #'(6.5)
    as'! \paren\mp \< [ ^\markup { \italic { ord } }
%% ^\markup { YL }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    fs'8
    cs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    cs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    gs'8
    \syncSpan #-22 #6 #'(-2.5 . 3)
    fs''8 \startGroup
    r \stopGroup
  }
  \tuplet 13/8 {
    fs''8 ^\markup { \italic { mid } }\mf
%% ^\markup { YM }
    cs''8
    r
    fs''8
    bqs''
    dqs'''
    bqs''
    cs'''8
    dqs'''
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    dqs'''
    bqs''
    \once \set stemRightBeamCount = #1
    fs'''16
    s32
    \once \set stemLeftBeamCount = 1
    \once \omit Rest
    r32 ]
    \revert Stem.details.beamed-lengths
  }
  \tuplet 12/8 {
    \pizzBeam
    cs'''8 [] ^\markup { \italic { pizz } } \paren\mf
%% ^\markup { YN }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    as''! []
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs''8 []
  }
  \tuplet 13/8 {
    fs'''8 [ ^\markup { \italic { ord } }
%% ^\markup { YO }
    r
    cs''8
    fs''8
    dqs''
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    fs'8
    cs''8
    r
    fs''8
    cs''8
    fs'8
  }
  \tuplet 14/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'! ^\markup { \italic { heavy } }
%% ^\markup { YP }
    f''8
    dqf'
    r
    f''8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    f'''8
    dqf''
    bqf''
    g'8
    r
    c'8
  }
  \tuplet 13/8 {
    \syncSpan #-40 #6 #'(-2.4 . 3.3)
    f''8 ^\markup { \italic { \halign #-0.6 ord } }
%% ^\markup { YQ }
    \startGroup
    r \stopGroup r
    c'8
    r
    f''8
    dqf'''
    f''8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a''!
    r r
  }
  \tuplet 14/8 {
    dqf''' ^\markup { \italic { mid } }
%% ^\markup { YR }
    c'''8
    bqf''
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a''!
    f'8
    c''8
    f'8
    bqf'
    f''8
    dqf''
    c'''8
    r
    g''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'''!
  }
  \tuplet 15/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'''! ^\markup { \italic { heavy } }
%% ^\markup { YS }
    f'8
    c''8
    r
    f'8
    c''8
    g'8
    r
    f''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    dqf''
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    r r
    dqf''
  }
  \tuplet 14/8 {
    bqf' ^\markup { \italic { ord } } \paren\mf
%% ^\markup { YT }
    c''8
    bqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'8
    c''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    f''8
    dqf''
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    c'''8
    f''8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
  }
  \tuplet 15/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \override Stem.details.beamed-lengths = #'(9)
    d''! \< ^\markup { \italic { mid } }
%% ^\markup { YU }
    b'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    r
    fs'8
    ds''8
    e'8
    r
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    ds''8
    b8
    r
    \revert Stem.details.beamed-lengths
  }
  \tuplet 16/8 {
    e''8 ^\markup { \italic { heavy } } %\f
%% ^\markup { YV }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    ds''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    b''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    e'''8 \f
    r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'''!
    e'''8
    b''8
    aqs'''
  }
  \tuplet 16/8 {
    \syncSpan #-42 #10 #'(-2.5 . 2.8)
    \override Stem.details.beamed-lengths = #'(14)
    e'''8 ^\markup { \italic { \halign #-0.5 ord } }
%% ^\markup { YW }
    \startGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'''! \stopGroup
    ds'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    b'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    e'''8
    r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    e'''8
    b'''8
    aqs'''
    \revert Stem.details.beamed-lengths
  }
  \tuplet 15/8 {
    b8 ^\markup { \italic { mid } }
%% ^\markup { YX }
    e'''8
    cqs'''
    b8
    ds'''8
    e'''8
    r
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    e'''8
    ds'''8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    \syncSpan #-26 #8 #'(-2.5 . 3.2)
    fs'''8 \startGroup
    e'''8 \stopGroup
  }
  \tuplet 14/8 {
    aqs ^\markup { \italic { heavy } }
%% ^\markup { YY }
    e'''8
    b''8
    aqs
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    e'8
    aqs'''
    r
    b8
    e''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d''!
    e''8
    cqs'
    r
  }
  \tuplet 15/8 {
    bf8 ^\markup { \italic { ord } } \paren\f
%% ^\markup { YZ }
    ef'8
    cqf''
    bf8
    r
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    bf8
    f''8
    d''8
    ef'8
    d'8
    aqf
    r
    ef''8
  }
  \tuplet 14/8 {
    aqf' ^\markup { \italic { mid } }
%% ^\markup { ZA }
    ef'8
    bf'8
    aqf'
    r
    ef'8
    aqf'
    ef'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    ef''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
  }
  \tuplet 13/8 {
    ef''8 ^\markup { \italic { heavy } }
%% ^\markup { ZB }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef''8
    cqf''
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    r r
    f'8
    ef'8
    r r r
  }
  \tuplet 14/8 {
    \syncSpan #-38 #5 #'(-2.5 . 3)
    cqf'' ^\markup { \italic { \halign #-0.5 ord } }
%% ^\markup { ZC }
    \startGroup
    ef'8 \stopGroup
    r
    aqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    aqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    cqf'
    r
    ef''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    r
    bf'8
  }
  \tuplet 13/8 {
    ef'8 \paren\f \> ^\markup { \italic { heavy } }
%% ^\markup { ZD }
    bf8
    r r
    aqf
    bf'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    r
    bf8
    ef''8
    s16.
    \once \set stemLeftBeamCount = 1
    \once \omit Rest
    r32 ]
  }
  \tuplet 12/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    fs''!8 [] ^\markup { \italic { pizz } }\mf
%% ^\markup { ZE }
    r
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
    d'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''! []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c''! []
  }
  \tuplet 13/8 {
    a'8 [ ^\markup { \italic { mid } } \paren\mf
%% ^\markup { ZF }
    r
    d'8
    a'8
    gqs''
    a'8
    r
    d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    d'8
    r r
  }
  \tuplet 12/8 {
    a'8 ^\markup { \italic { heavy } }
%% ^\markup { ZG }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    d'8
    a8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    \once \set stemRightBeamCount = #1
    a16
    s32
    \once \omit Rest
    \once \set stemLeftBeamCount = #1
    r32 ]
  }
  \tuplet 11/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \pizzBeam
    fs'!8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZH }
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    r r r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs'! []
  }
  \tuplet 12/8 {
    \syncSpan #-59 #6 #'(-2.5 . 3)
    \override Stem.details.beamed-lengths = #'(5.5)
    d''8 [ ^\markup { \italic { \halign #-0.4 mid } }
%% ^\markup { ZI }
    \startGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'! \stopGroup
    e'8
    d''8
    r
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    d''8
    r
    a'8
    d''8
    a'8
    \revert Stem.details.beamed-lengths
  }
  \tuplet 11/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \override Stem.details.beamed-lengths = #'(4)
    fs''! ^\markup { \italic { heavy } }
%% ^\markup { ZJ }
    r
    d''8
    r r r r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = 1
    fs'!16
    s32
    \hideRest
    r32 ]
    \revert Stem.details.beamed-lengths
  }
  \tuplet 10/8 {
    \pizzBeam
    d''8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZK }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e''8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    fs''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    e'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
  }
  \tuplet 11/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'! [ ^\markup { \italic { mid } } \paren\mf \>
%% ^\markup { ZL }
    r
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    e'8
    r
    d'8
    e'8
    gqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a'8
  }
  \tuplet 10/8 {
    d''8 ^\markup { \italic { heavy } }
%% ^\markup { ZM }
    r
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    r
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    a'8
    \once \set stemRightBeamCount = 1
    d''16 \mp
    s32..
    \hideRest
    r128 ]

  }
  \tuplet 9/8 {
    \pizzBeam
    ef''8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZN }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    df''! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    f'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
  }
  \tuplet 10/8 {
    \syncSpan #-55 #8 #'(-3 . 3)
    ef''8 [ ^\markup { \italic { \halign #-0.3 mid } }
%% ^\markup { ZO }
    \startGroup
    r \stopGroup
    bf'8
    r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    f'8
    ef'8
    r r
  }
  \tuplet 9/8 {
    ef'8 ^\markup { \italic { heavy } }
%% ^\markup { ZP }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    bf'8
    ef''8
    f''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    ef''8
    s
    s16.
    \hideRest
    r32 ]
  }
  \tuplet 8/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = 0
    \syncSpan #-24 #8 #'(-2.5 . 4)
    df''!8 \clb [] ^\markup { \italic { \halign #-1.7 clb } }
%% ^\markup { ZQ }
    \startGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemLeftBeamCount = 0
    g''! \clb [] \stopGroup
    \once \set stemLeftBeamCount = 0
    ef''8 \clb []
    s s
    \once \set stemLeftBeamCount = 0
    bf''8 \clb []
    \once \set stemLeftBeamCount = 0
    ef''8 \clb []
    \once \set stemLeftBeamCount = 0
    bf'8 \clb []
  }
  \tuplet 9/8 {
    f'8 [ ^\markup { \italic { heavy } } \paren\mp
%% ^\markup { ZR }
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    r r
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s16.
    \hideRest
    r32 ]
  }
  \tuplet 8/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \pizzBeam
    df''!8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZS }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 []
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf8 []
  }
  \tuplet 7/8 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    ef'8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { ZT }
    s8
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'8 \clb []
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    g'! \clb []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    bf'' \clb []
    s s
  }
  \tuplet 8/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    \syncSpan #-40 #6 #'(-2.6 . 4)
    df'!8  [ ^\markup { \italic { \halign #-0.3 heavy } }
%% ^\markup { ZU }
    \startGroup
    ef'8 \stopGroup
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    r
    bf8
    ef'8
    \once \set stemRightBeamCount = 1
    \once \set stemLeftBeamCount = 1
    bf16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 7/8 {
    \pizzBeam
    ef''8 [] \paren\mp \> ^\markup { \italic { pizz } }
%% ^\markup { ZV }
    r
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
    bf''8 []
    r r
  }
  \tuplet 6/8 {
    \set stemLeftBeamCount = #0
    a''8 \clb [] ^\markup { \italic { clb } }\p
%% ^\markup { ZW }
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    a'8 \clb []
    \pizzBeam
    d'8 \clb []
    \pizzBeam
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs' \clb []
    \pizzBeam
    d'8 \clb []
  }
  \tuplet 7/8 {
    d'8 [ ^\markup { \italic { heavy } } \paren\p
%% ^\markup { ZX }
    a8
    s
    d'8
    s
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    \once \set stemLeftBeamCount = #1
    \once \set stemRightBeamCount = #1
    c'!16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 6/8 {
    \pizzBeam
    a''8 [] ^\markup { \italic { pizz } }
%% ^\markup { ZY }
    r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    d'8 []
    r r
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    a'8 []
  }
  \tuplet 5/8 {
    \once \set stemRightBeamCount = #1
    \set stemLeftBeamCount = #0
    d''8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { ZZ }
    \pizzBeam
    a'8 \clb []
    \pizzBeam
    d''8 \clb []
    s s
  }
  \tuplet 6/8 {
    \syncSpan #-62 #6 #'(-3.5 . 2.7)
    a'8 [ ^\markup { \italic { \halign #0 heavy } }
%% ^\markup { AA }
    \startGroup
    s
    d'8 \stopGroup
    s s
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #1
    a'16
    s32
    \hideRest
    r32 ]
  }
  \tuplet 5/8 {
    \pizzBeam
    cs''8 [] ^\markup { \italic { pizz } }
%% ^\markup { AB }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'''8 []
    r r
  }
  \tuplet 4/8 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    \syncSpan #-38 #8 #'(-2.5 . 3.7)
    gs8 \clb [] ^\markup { \italic { \halign #-1.5 clb } }
%% ^\markup { AC }
    \startGroup
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs'8 \clb [] \stopGroup
    s s
  }
  \tuplet 5/8 {
    \pizzBeam
    cs''8 [] ^\markup { \italic { pizz } } \paren\p \>
%% ^\markup { AD }
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs'8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    gs''8 []
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    cs''8 []
  }
  \tuplet 1/8 {
    \once \set stemRightBeamCount = 1
    \once \set stemLeftBeamCount = 0
    cs'''8 \clb [] ^\markup { \italic { clb } } \pp
%% ^\markup { AE }
  }
  \tuplet 3/8 {
    cs'8 [ ^\markup { \italic { clt } }
%% ^\markup { AF }
    gs'8
    \once \set stemRightBeamCount = 1
    \once \set stemLeftBeamCount = 1
    cs''16
    s32..
    \hideRest
    r128 ]
  }
  \tuplet 4/8 {
    \pizzBeam
    \syncSpan #-62 #6 #'(-2.5 . 4)
    c''8 [] ^\markup { \italic { pizz } }
%% ^\markup { AG }
    \startGroup
    r r r \stopGroup
  }
  \tuplet 1/8 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c'8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { AH }
  }
  \tuplet 2/8 {
    c''8 [ ^\markup { \italic { clt } }
%% ^\markup { AI }
    s16..
    \hideRest
    r64 ]
  }
  \tuplet 3/8 {
    \pizzBeam
    c'''8 [] ^\markup { \italic { pizz } } \paren\pp
%% ^\markup { AJ }
    r r
  }
  \tuplet 2/8 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    \syncSpan #-62 #8 #'(-2.5 . 5)
    c'8 \clb [] ^\markup { \italic { \halign #-1.5 clb } }
%% ^\markup { AK }
    \startGroup
    r \stopGroup
  }
  \tuplet 2/8 {
    c''8 [ ^\markup { \italic { clt } }
%% ^\markup { AL }
    s16..
    \hideRest
    r64 ]
  }
  \tuplet 2/8 {
    \pizzBeam
    \syncSpan #-38 #5.5 #'(-2.2 . 4.5)
    c''8 [] ^\markup { \italic { pizz } }
%% ^\markup { AM }
    \startGroup
    r \stopGroup
  }
  \tuplet 1/8 {
    \once \set stemRightBeamCount = #1
    \once \set stemLeftBeamCount = #0
    c''8 \clb [] ^\markup { \italic { clb } }
%% ^\markup { AN }
  }
  \tuplet 8/8 {
    \once \override Hairpin.stencil = #(circ-tip 0.3 0.1)
    c''8 [ ^\markup { \italic { clt } }\ppp \>
%% ^\markup { AO }
    r r r r r r
    \once \set stemLeftBeamCount = 1
    c''16 \! ]
  }
}

\book {
  \bookOutputName "ViolinOne"
  \paper {
    system-system-spacing.minimum-distance = #20
    system-separator-markup = \slashSeparator
  }
  \score {
    \new StaffGroup <<
      \new Staff {
        \time 4/2
        \clef treble
        \autoBeamOff
        <<
          \ViolinOne
          {
           \set Score.markFormatter
             = #(lambda (mark context)
               (make-bold-markup
                 (make-box-markup
                   (number->string (ly:context-property context
                                                        'currentBarNumber)))))
             \mark \default
            \repeat unfold 45 { s1 s1 \mark \default \break }

          }
        >>
      }
    >>
    \layout {
      indent = 0\cm
      \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/20)
      }
      \context {
        \Staff
        \accidentalStyle Score.dodecaphonic
      }
      \context {
        \Voice
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket.breakable = ##t
        \remove "Forbid_line_break_engraver"
        \override Beam.breakable = ##t
        \override Glissando.breakable = ##t
        \consists "Horizontal_bracket_engraver"
      }
    }
  }
}
