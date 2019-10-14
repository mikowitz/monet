\version "2.19.82"
\language "english"

ViolinOne = {
  \autoBeamOff
  \override Beam.damping = #20
  \tuplet 1/8 {
    b'8 ^\markup { \italic { clt } }\pppp  [
  }
  \tuplet 1/8 {
    b'8 ^\markup { \italic { light } }
  }
  \tuplet 2/8 {
    b'8 ^\markup { \italic { pizz } }
    b''8
  }
  \tuplet 1/8 {
    b'8 ^\markup { \italic { clt } }
  }
  \tuplet 2/8 {
    b'8 ^\markup { \italic { light } }
    s8
    % b'8
  }
  \tuplet 3/8 {
    fs''8 ^\markup { \italic { pizz } }
    b'8
    fs''8
  }
  \tuplet 2/8 {
    b'8 ^\markup { \italic { clt } }
    s
    % b'8
  }
  \tuplet 3/8 {
    b'8 ^\markup { \italic { light } }
    fs''8
    b'8
  }
  \tuplet 4/8 {
    b'8 ^\markup { \italic { pizz } }\p
    fs''8
    b'8
    s
    % b''8
  }
  \tuplet 3/8 {
    bf'8 ^\markup { \italic { clt } }
    f''8
    bf'8
  }
  \tuplet 4/8 {
    bf'8 ^\markup { \italic { light } }
    f''8
    bf'8
    f''8
  }
  \tuplet 5/8 {
    bf''8 ^\markup { \italic { pizz } }
    f''8
    bf''8
    s
    s
    % bf'8
    % bf'8
  }
  \tuplet 4/8 {
    f''8 ^\markup { \italic { light } }
    bf''8
    s s
    % bf'8
    % bf'8
  }
  \tuplet 5/8 {
    bf''8 ^\markup { \italic { pizz } }
    s s
    % bf'8
    % bf'8
    f''8
    bf''8
  }
  \tuplet 6/8 {
    a''8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    a''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    a''8
    s
    % a'8
  }
  \tuplet 5/8 {
    a'8 ^\markup { \italic { light } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % cs'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % cs'!
    e''8
  }
  \tuplet 6/8 {
    a''8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
    e'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
    e''8
    s
    % e'8
  }
  \tuplet 7/8 {
    a'8 ^\markup { \italic { ord } }\ppp
    e''8
    s
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % cs'!
    e''8
    a''8
  }
  \tuplet 6/8 {
    a''8 ^\markup { \italic { light } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'''!
    e''8
    a''8
    e''8
    s
    % e'8
  }
  \tuplet 7/8 {
    af''8 ^\markup { \italic { pizz } }
    s
    % af'8
    ef''8
    af''8
    s s
    % af'8
    % af'8
    ef'8
  }
  \tuplet 8/8 {
    ef'8 ^\markup { \italic { ord } }
    af'8
    s s
    % af'8
    % af'8
    ef'8
    af'8
    ef'8
    af'8 ^\markup { \italic { light } }
  }
  \tuplet 7/8 {
    s s
    % af'8
    % af'8
    ef'8
    af'8
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    ef'8
  }
  \tuplet 8/8 {
    ef''8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    af'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    af'8
    s
    % af'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c'!
  }
  \tuplet 9/8 {
    af'8 ^\markup { \italic { ord } }
    s s
    % af'8
    % af'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % gf'!
    ef''8
    af'8
    s s
    % af'8
    % af'8
  }
  \tuplet 8/8 {
    d''8 ^\markup { \italic { light } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''!
    g''8
    s s
    % g'8
    % g'8
    d''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''!
    d'''8
  }
  \tuplet 9/8 {
    g''8 ^\markup { \italic { pizz } }
    s s
    % g'8
    % g'8
    d'8
    g''8
    s
    % g'8
    a''8
    d'''8
    g''8
  }
  \tuplet 10/8 {
    g''8 ^\markup { \italic { mid } }\mf
    a''8
    s
    % a'8
    g'8
    s s
    % g'8
    % g'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b''!
    d'''8
    g'8
    d'8
  }
  \tuplet 9/8 {
    d''8 ^\markup { \italic { pizz } }
    g''8
    s s s s
    % g'8
    % g'8
    % g'8
    % g'8
    d''8
    s
    % d'8
    g''8
  }
  \tuplet 10/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b''! ^\markup { \italic { ord } }
    a''8
    s s
    % a'8
    % a'8
    g'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''!
    g''8
    s
    % g'8
  }
  \tuplet 11/8 {
    fs''8 ^\markup { \italic { mid } }
    cqf''
    s
    % cqf'
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    fs''8
    cqf''
    gs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    fs''8
  }
  \tuplet 10/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''! ^\markup { \italic { pizz } }
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    gs''8
    cs'''8
    fs''8
    s
    % fs''8
    gs''8
    fs''8
    s
    % fs''8
  }
  \tuplet 11/8 {
    fs'''8 ^\markup { \italic { ord } }
    s
    % fs'8
    gs''8
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    cs''8
    fs'8
    s
    % fs'8
    cqf''
    fs'8
    cqf''
  }
  \tuplet 12/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'! ^\markup { \italic { mid } }
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
  }
  \tuplet 11/8 {
    cqf'' ^\markup { \italic { pizz } }
    fs''8
    gs''8
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as'!
    fs'8
    s
    % fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    fs'8
    cs''8
  }
  \tuplet 12/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'! ^\markup { \italic { ord } }
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
    fs''8
    s
    % fs'8
  }
  \tuplet 13/8 {
    fs''8 ^\markup { \italic { mid } }\mp
    cs''8
    s
    % cs'8
    fs''8
    cqf'''
    dqs'''
    cqf'''
    cs'''8
    dqs'''
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    dqs'''
    cqf'''
    fs'''8
  }
  \tuplet 12/8 {
    cs'''8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    cs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as''!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as'!
    cs'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    cs''8
    fs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    gs''8
  }
  \tuplet 13/8 {
    fs'''8 ^\markup { \italic { ord } }
    s
    % fs'8
    cs''8
    fs''8
    dqs''
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    fs'8
    cs''8
    s
    % cs'8
    fs''8
    cs''8
    fs'8
  }
  \tuplet 14/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'! ^\markup { \italic { heavy } }
    f''8
    dqf'
    s
    % dqf'
    f''8
    s s
    % f'8
    % f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    f'''8
    dqf''
    bqf''
    g'8
    s
    % g'8
    c'8
  }
  \tuplet 13/8 {
    f''8 ^\markup { \italic { ord } }
    s s
    % f'8
    % f'8
    c'8
    s
    % c'8
    f''8
    dqf'''
    f''8
    s s
    % f'8
    % f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a''!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % a'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % a'!
  }
  \tuplet 14/8 {
    dqf''' ^\markup { \italic { mid } }
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
    s
    % c''8
    g''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'''!
  }
  \tuplet 15/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'''! ^\markup { \italic { heavy } }
    f'8
    c''8
    s
    % c'8
    f'8
    c''8
    g'8
    s
    % g'8
    f''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    dqf''
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % ef'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % ef'!
    dqf''
  }
  \tuplet 14/8 {
    bqf' ^\markup { \italic { ord } }
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
    s
    % f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef''!
  }
  \tuplet 15/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d''! ^\markup { \italic { mid } }
    b'8
    s
    % b'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % gs'!
    fs'8
    ds''8
    e'8
    s
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    ds''8
    b8
    s
    % b'8
  }
  \tuplet 16/8 {
    e''8 ^\markup { \italic { heavy } }\f
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
    e'''8
    s s s
    % e'8
    % e'8
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'''!
    e'''8
    b''8
    aqs'''
  }
  \tuplet 16/8 {
    e'''8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'''!
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
    s s s
    % e'8
    % e'8
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    e'''8
    b'''8
    aqs'''
  }
  \tuplet 15/8 {
    b8 ^\markup { \italic { mid } }
    e'''8
    cqs'''
    b8
    ds'''8
    e'''8
    s
    % e'8
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
    fs'''8
    e'''8
  }
  \tuplet 14/8 {
    aqs ^\markup { \italic { heavy } }
    e'''8
    b''8
    aqs
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'''!
    e'8
    aqs'''
    s
    % aqs'
    b8
    e''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d''!
    e''8
    cqs'
    s
    % cqs'
  }
  \tuplet 15/8 {
    bf8 ^\markup { \italic { ord } }
    ef'8
    bqs'
    bf8
    s
    % bf'8
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
    s
    % aqf'
    ef''8
  }
  \tuplet 14/8 {
    aqf' ^\markup { \italic { mid } }
    ef'8
    bf'8
    aqf'
    s
    % aqf'
    ef'8
    aqf'
    ef'8
    s
    % ef'8
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
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef''8
    bqs'
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g'!
    f'8
    ef'8
    s s s
    % ef'8
    % ef'8
    % ef'8
  }
  \tuplet 14/8 {
    bqs' ^\markup { \italic { ord } }
    ef'8
    s
    % ef'8
    aqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    aqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    bqs
    s
    % bqs'
    ef''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % df'!
    bf'8
  }
  \tuplet 13/8 {
    ef'8 ^\markup { \italic { heavy } }
    bf8
    s s
    % bf'8
    % bf'8
    aqf
    bf'8
    s
    % bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s
    % ef'8
    bf8
    ef''8
    s
    % ef'8
  }
  \tuplet 12/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''! ^\markup { \italic { pizz } }\mp
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    a'8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
  }
  \tuplet 13/8 {
    a'8 ^\markup { \italic { mid } }
    s
    % a'8
    d'8
    a'8
    gqs''
    a'8
    s
    % a'8
    d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    d'8
    s s
    % d'8
    % d'8
  }
  \tuplet 12/8 {
    a'8 ^\markup { \italic { heavy } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    d'8
    a8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a8
  }
  \tuplet 11/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'! ^\markup { \italic { pizz } }
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs'!
    d'8
    s s s s s
    % d'8
    % d'8
    % d'8
    % d'8
    % d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
  }
  \tuplet 12/8 {
    d''8 ^\markup { \italic { mid } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    e'8
    d''8
    s
    % d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    d''8
    s
    % d'8
    a'8
    d''8
    a'8
  }
  \tuplet 11/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''! ^\markup { \italic { heavy } }
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs'!
    d''8
    s s s s s
    % d'8
    % d'8
    % d'8
    % d'8
    % d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
  }
  \tuplet 10/8 {
    d''8 ^\markup { \italic { pizz } }
    a'8
    d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    e''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    d''8
    e'8
    d'8
  }
  \tuplet 11/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'! ^\markup { \italic { mid } }
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs'!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    e'8
    s
    % e'8
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
    s
    % d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c'!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    a'8
    d''8
  }
  \tuplet 9/8 {
    ef''8 ^\markup { \italic { pizz } }\mf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    f'8
    s
    % f'8
    ef''8
    f'8
    bf'8
  }
  \tuplet 10/8 {
    ef''8 ^\markup { \italic { mid } }
    s
    % ef'8
    bf'8
    s
    % bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    f'8
    ef'8
    s s
    % ef'8
    % ef'8
  }
  \tuplet 9/8 {
    ef'8 ^\markup { \italic { heavy } }
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
    % ef'8
    % ef'8
  }
  \tuplet 8/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''! ^\markup { \italic { clb } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    ef''8
    s s
    % ef'8
    % ef'8
    bf''8
    ef''8
    bf'8
  }
  \tuplet 9/8 {
    f'8 ^\markup { \italic { heavy } }
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s s
    % ef'8
    % ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s
    % ef'8
  }
  \tuplet 8/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''! ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s s
    % ef'8
    % ef'8
    bf'8
    ef''8
    bf8
  }
  \tuplet 7/8 {
    ef'8 ^\markup { \italic { clb } }
    s
    % ef'8
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    bf''8
    s s
    % bf'8
    % bf'8
  }
  \tuplet 8/8 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'! ^\markup { \italic { heavy } }
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s
    % ef'8
    bf8
    ef'8
    bf8
  }
  \tuplet 7/8 {
    ef''8 ^\markup { \italic { pizz } }
    s
    % ef'8
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    bf''8
    s s
    % bf'8
    % bf'8
  }
  \tuplet 6/8 {
    a''8 ^\markup { \italic { clb } }\ppp
    d'8
    a'8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    d'8
  }
  \tuplet 7/8 {
    d'8 ^\markup { \italic { heavy } }
    a8
    s
    % a'8
    d'8
    s
    % d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
  }
  \tuplet 6/8 {
    a''8 ^\markup { \italic { pizz } }
    s
    % a'8
    d'8
    s s
    % d'8
    % d'8
    a'8
  }
  \tuplet 5/8 {
    d''8 ^\markup { \italic { clb } }
    a'8
    d''8
    s s
    % d'8
    % d'8
  }
  \tuplet 6/8 {
    a'8 ^\markup { \italic { heavy } }
    s
    % a'8
    d'8
    s s
    % d'8
    % d'8
    a'8
  }
  \tuplet 5/8 {
    cs''8 ^\markup { \italic { pizz } }
    gs8
    cs'''8
    s s
    % cs'8
    % cs'8
  }
  \tuplet 4/8 {
    gs8 ^\markup { \italic { clb } }
    cs'8
    s s
    % cs'8
    % cs'8
  }
  \tuplet 5/8 {
    cs''8 ^\markup { \italic { pizz } }
    gs'8
    cs''8
    gs''8
    cs''8
  }
  \tuplet 4/8 {
    cs'''8 ^\markup { \italic { clb } }
    s s s
    % cs'8
    % cs'8
    % cs'8
  }
  \tuplet 3/8 {
    cs'8 ^\markup { \italic { clt } }\p
    gs'8
    cs''8
  }
  \tuplet 4/8 {
    c''8 ^\markup { \italic { pizz } }
    s s s
    % c'8
    % c'8
    % c'8
  }
  \tuplet 3/8 {
    c'8 ^\markup { \italic { clb } }
    s s
    % c'8
    % c'8
  }
  \tuplet 2/8 {
    c''8 ^\markup { \italic { clt } }
    s
    % c'8
  }
  \tuplet 3/8 {
    c'''8 ^\markup { \italic { pizz } }
    s s
    % c'8
    % c'8
  }
  \tuplet 2/8 {
    c'8 ^\markup { \italic { clb } }
    s
    % c'8
  }
  \tuplet 1/8 {
    c''8 ^\markup { \italic { clt } }
  }
  \tuplet 2/8 {
    c''8 ^\markup { \italic { pizz } }
    s
    % c'8
  }
  \tuplet 1/8 {
    c''8 ^\markup { \italic { clb } }
  }
  \tuplet 8/8 {
    c''8 ^\markup { \italic { clt } }\pppp
    s s s s s s
    c'' ]
  }
}

% \book {
  % 	\bookOutputName "ViolinOne"
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
          %         \ViolinOne
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
