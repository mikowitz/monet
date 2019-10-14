ViolinTwo = {
  \autoBeamOff
  \override Beam.damping = #20
  \tuplet 1/15 {
    b'8 ^\markup { \italic { clt } }\pppp  [
  }
  \tuplet 2/15 {
    b'8 ^\markup { \italic { light } }
    s8
    % b'8
  }
  \tuplet 3/15 {
    b'8 ^\markup { \italic { pizz } }
    s
    % b'8
    fs'8
  }
  \tuplet 4/15 {
    b'8 ^\markup { \italic { clt } }
    s
    % b'8
    fs'8
    b'8
  }
  \tuplet 5/15 {
    bf'8 ^\markup { \italic { light } }
    s s
    % bf'8
    % bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    f'8
  }
  \tuplet 6/15 {
    f'8 ^\markup { \italic { pizz } }
    bf'8
    f'8
    bf'8
    f'8
    bf'8
  }
  \tuplet 7/15 {
    bf'8 ^\markup { \italic { clt } }\p
    f'8
    bf'8
    f'8
    s
    % f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    bf'8
  }
  \tuplet 8/15 {
    a'8 ^\markup { \italic { light } }
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
    cs''!
  }
  \tuplet 9/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'! ^\markup { \italic { pizz } }
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
    a8
    e'8
    a8
    b8
    s s
    % b'8
    % b'8
  }
  \tuplet 10/15 {
    a''8 ^\markup { \italic { light } }
    s
    % a'8
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
    e''8
    s
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs''!
    b'8
  }
  \tuplet 11/15 {
    dqf'' ^\markup { \italic { pizz } }
    ef'8
    af8
    ef'8
    dqf''
    s
    % dqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    dqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    ef'8
    af8
  }
  \tuplet 12/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'! ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    af'8
    s
    % af'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % gf'!
    dqf''
    af'8
    s s
    % af'8
    % af'8
    ef'8
    s
    % ef'8
  }
  \tuplet 13/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'! ^\markup { \italic { light } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf'!
    dqf'
    af'8
    dqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c'!
    bf8
    eqs'
    af8
    s
    % af'8
    ef'8
    af8
  }
  \tuplet 14/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b! ^\markup { \italic { pizz } }\ppp
    g'8
    d''8
    s
    % d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b'!
    g'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    g8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % f'!
    g8
    s
    % g'8
  }
  \tuplet 15/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'! ^\markup { \italic { ord } }
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    g8
    s
    % g'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    a8
    g8
    s
    % g'8
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
    s
    % a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    fs'8
    d'8
    s
    % d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    g8
    s
    % g'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
  }
  \tuplet 17/15 {
    f'8 ^\markup { \italic { pizz } }
    g8
    cs'8
    fs'8
    gs8
    g8
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    g'8
    fs'8
    s
    % fs'8
    f''8
    cs''8
    s
    % cs'8
    dqs''
    fs''8
    g''8
  }
  \tuplet 18/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'! ^\markup { \italic { ord } }
    cs''8
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e''!
    cqf''
    gs''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    cqf''
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
    gs8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    cqf'
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
    s
    % fs'8
    gs8
    fs'8
    s
    % fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs'8
  }
  \tuplet 20/15 {
    fs'8 ^\markup { \italic { ord } }\mf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'!
    s s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as'!
    dqs'
    cs'8
    gs'8
    cs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    gs'8
    fs'8
    gs'8
    s
    % gs'8
    f'8
    g'8
    gs'8
    f'8
    cs'8
  }
  \tuplet 19/15 {
    dqf' ^\markup { \italic { mid } }
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % a'!
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'8
    c'8
    f'8
  }
  \tuplet 18/15 {
    f'8 ^\markup { \italic { pizz } }
    g'8
    dqf'
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    bqf'
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    c'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    c'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    bqf'
    f'8
    e'8
    g'8
    e'8
    s
    % e'8
  }
  \tuplet 17/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'! ^\markup { \italic { ord } }
    f'8
    bqf'
    c'8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % ef'!
    c'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef'!
    f'8
    s
    % f'8
    gf'8
    f'8
    c'8
    g'8
    f'8
    bqf'
  }
  \tuplet 16/15 {
    e'8 ^\markup { \italic { mid } }
    b'8
    aqs'
    b'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    e'8
    s
    % e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    fs'8
    aqs'
    s
    % aqs'
    fs'8
    e'8
    ds'8
    e'8
    s
    % e'8
  }
  \tuplet 15/15 {
    e'8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    fs'8
    e'8
    s
    % e'8
    b'8
    cqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs'!
    b'8
    cqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    fs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % d'!
  }
  \tuplet 14/15 {
    e'8 ^\markup { \italic { ord } }\mp
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
    d'!
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % d'!
    b'8
    e'8
    s s
    % e'8
    % e'8
  }
  \tuplet 12/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'! ^\markup { \italic { pizz } }
    f'8
    bf'8
    aqf'
    bf'8
    aqf'
    bf'8
    s
    % bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    aqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    bf'8
  }
  \tuplet 11/15 {
    f'8 ^\markup { \italic { mid } }
    ef'8
    s
    % ef'8
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
    bf'8
    ef'8
  }
  \tuplet 12/15 {
    ef'8 ^\markup { \italic { heavy } }
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    ef'8
    s s
    % ef'8
    % ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    bf'8
    s
    % bf'8
  }
  \tuplet 11/15 {
    e'8 ^\markup { \italic { ord } }
    a'8
    d'8
    s s
    % d'8
    % d'8
    a'8
    d'8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    d'8
    s
    % d'8
  }
  \tuplet 10/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'! ^\markup { \italic { mid } }\f
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    e'8
    d'8
    s
    % d'8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a'8
    d'8
  }
  \tuplet 9/15 {
    d'8 ^\markup { \italic { heavy } }
    e'8
    s
    % e'8
    d''8
    s
    % d'8
    e''8
    d'''8
    s
    % d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'''!
  }
  \tuplet 10/15 {
    d'''8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'''!
    d'''8
    a''8
    s s s
    % a'8
    % a'8
    % a'8
    d'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'''!
    e'''8
  }
  \tuplet 9/15 {
    ef'''8 ^\markup { \italic { mid } }\mp
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'''!
    f'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    f'''8
    s
    % f'8
    ef'8
    f'''8
    ef'8
  }
  \tuplet 8/15 {
    bf''8 ^\markup { \italic { heavy } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g'!
    ef''8
    s
    % ef'8
    bf8
    ef''8
    s
    % ef'8
  }
  \tuplet 7/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''! ^\markup { \italic { mid } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    ef'8
    bf''8
    ef'8
    s
    % ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
  }
  \tuplet 8/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''! ^\markup { \italic { heavy } }\mf
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g''!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g'!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    ef'8
    s
    % ef'8
  }
  \tuplet 7/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''! ^\markup { \italic { pizz } }
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c'!
    d''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    d'''8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'''!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
  }
  \tuplet 6/15 {
    a''8 ^\markup { \italic { mid } }
    d''8
    s
    % d'8
    a''8
    s s
    % a'8
    % a'8
  }
  \tuplet 5/15 {
    a''8 ^\markup { \italic { pizz } }\ppp
    s
    % a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs''!
    d''8
    s
    % d'8
  }
  \tuplet 6/15 {
    gs'8 ^\markup { \italic { clb } }
    s
    % gs'8
    cs'8
    s s s
    % cs'8
    % cs'8
    % cs'8
  }
  \tuplet 5/15 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f''! ^\markup { \italic { heavy } }
    gs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    cs'8
    s
    % cs'8
  }
  \tuplet 4/15 {
    cs'8 ^\markup { \italic { pizz } }\p
    s s s
    % cs'8
    % cs'8
    % cs'8
  }
  \tuplet 3/15 {
    g8 ^\markup { \italic { clt } }
    c'8
    s
    % c'8
  }
  \tuplet 4/15 {
    c'8 ^\markup { \italic { pizz } }
    g8
    c'8
    g8
  }
  \tuplet 2/15 {
    c''8 ^\markup { \italic { clb } }
    s
    % c'8
  }
  \tuplet 1/15 {
    c''8 ^\markup { \italic { clt } }\pppp ]
  }

}
