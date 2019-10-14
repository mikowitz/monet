Viola = {
  \autoBeamOff
  \override Beam.damping = #20
  \tuplet 1/12 {
    b'8 ^\markup { \italic { clt } }\pppp  [
  }
  \tuplet 2/12 {
    b'8 ^\markup { \italic { light } }
    s8
    % b8
  }
  \tuplet 3/12 {
    b'8 ^\markup { \italic { pizz } }
    fs8
    b'8
  }
  \tuplet 1/12 {
    b8 ^\markup { \italic { clt } }
  }
  \tuplet 2/12 {
    b'8 ^\markup { \italic { light } }\p
    s
    % b8
  }
  \tuplet 3/12 {
    bf'8 ^\markup { \italic { pizz } }
    f'8
    s
    % f8
  }
  \tuplet 4/12 {
    bf'8 ^\markup { \italic { light } }
    f'8
    bf'8
    f'8
  }
  \tuplet 5/12 {
    bf'8 ^\markup { \italic { pizz } }
    s s s
    % bf8
    % bf8
    % bf8
    f8
  }
  \tuplet 3/12 {
    bf8 ^\markup { \italic { ord } }
    s s
    % bf8
    % bf8
  }
  \tuplet 4/12 {
    a8 ^\markup { \italic { light } }\ppp
    s
    % a8
    e'8
    s
    % e8
  }
  \tuplet 5/12 {
    a8 ^\markup { \italic { pizz } }
    s s s s
    % a8
    % a8
    % a8
    % a8
  }
  \tuplet 6/12 {
    a8 ^\markup { \italic { ord } }
    s s
    % a8
    % a8
    e8
    a8
    e8
  }
  \tuplet 5/12 {
    a8 ^\markup { \italic { light } }
    s
    % a8
    e8
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    cs'!
  }
  \tuplet 6/12 {
    ef8 ^\markup { \italic { ord } }
    s
    % ef8
    af8
    ef8
    s s
    % ef8
    % ef8
  }
  \tuplet 7/12 {
    ef8 ^\markup { \italic { mid } }\mf
    af8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
    af8
    s
    % af8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
    af8
  }
  \tuplet 8/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'! ^\markup { \italic { pizz } }
    af8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
    af8
    ef8
  }
  \tuplet 7/12 {
    ef8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c!
    af'8
    s
    % af8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    gf!
  }
  \tuplet 8/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b! ^\markup { \italic { mid } }
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
    b!
  }
  \tuplet 9/12 {
    d'8 ^\markup { \italic { pizz } }
    g8
    d'8
    g8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b'!
    d'8
    g8
    s
    % g8
  }
  \tuplet 10/12 {
    g8 ^\markup { \italic { mid } }\mp
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % f!
    g8
    s
    % g8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    s s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % b!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % b!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % b!
    a8
  }
  \tuplet 9/12 {
    g8 ^\markup { \italic { heavy } }
    s s
    % g8
    % g8
    a'8
    g8
    s s
    % g8
    % g8
    a'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
  }
  \tuplet 10/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as'! ^\markup { \italic { ord } }
    cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as!
    fs'8
    cs8
    s
    % cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs'8
  }
  \tuplet 11/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as! ^\markup { \italic { mid } }
    fs8
    s
    % fs8
    cs8
    s
    % cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    cs'8
    cqf'
    fs8
    cs8
    fs8
  }
  \tuplet 12/12 {
    cs8 ^\markup { \italic { heavy } }\f
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs8
    s
    % fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
    cqf'
    cs''8
    cqf'
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e'!
  }
  \tuplet 13/12 {
    cs'8 ^\markup { \italic { ord } }
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
    s
    % cs8
  }
  \tuplet 11/12 {
    gs8 ^\markup { \italic { mid } }
    cqf'
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
    cqf'
    fs'8
    s
    % fs8
  }
  \tuplet 12/12 {
    c8 ^\markup { \italic { heavy } }
    f8
    s
    % f8
    c'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'8
    c'8
    s
    % c8
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % a!
    f8
  }
  \tuplet 13/12 {
    c8 ^\markup { \italic { ord } }
    s
    % c8
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
    bqf' ^\markup { \italic { mid } }
    f'8
    bqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    c8
    dqf'
    s s
    % dqf
    % dqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    c8
    f8
    dqf
    f8
    dqf
  }
  \tuplet 13/12 {
    dqf' ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    c'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f'8
    bqf
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a'!
    f8
    bqf'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    a!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    ef!
    c8
  }
  \tuplet 14/12 {
    fs8 ^\markup { \italic { mid } }\mp
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d!
    b8
    s
    % b8
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
    s
    % b8
    fs8
    e'8
    s
    % e8
    b'8
    s
    % b8
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
    gs!
  }
  \tuplet 16/12 {
    ds8 ^\markup { \italic { pizz } }
    s
    % ds8
    b8
    s
    % b8
    ds8
    e8
    aqs
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
    fs8
    e'8
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    b8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    gs!
    b8
  }
  \tuplet 15/12 {
    b8 ^\markup { \italic { mid } }
    s
    % b8
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % d!
    cqs'
    e8
    cqs
    s
    % cqs
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    d'!
  }
  \tuplet 16/12 {
    d'8 ^\markup { \italic { heavy } }
    s
    % d8
    bf'8
    ef'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g!
    bf8
    s
    % bf8
    f'8
    bf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g!
    aqf'
    bf'8
    aqf'
  }
  \tuplet 17/12 {
    bf'8 ^\markup { \italic { pizz } }
    aqf'
    ef8
    bf'8
    ef8
    e8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df''!
    bf'8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef8
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    d8
  }
  \tuplet 18/12 {
    f8 ^\markup { \italic { mid } }
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
    bqs
    f8
    s
    % f8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
  }
  \tuplet 17/12 {
    bf8 ^\markup { \italic { heavy } }\mf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    ef8
    bqs
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g!
    f8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
  }
  \tuplet 18/12 {
    a8 ^\markup { \italic { pizz } }
    gqs
    cs8
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c!
    e8
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    e'8
    atqs'
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a'8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    atqs
    d'8
    e'8
  }
  \tuplet 19/12 {
    a'8 ^\markup { \italic { heavy } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    e'8
    s
    % e8
    d'8
    s
    % d8
    e'8
    atqs'
    gqs
    ds'8
    atqs'
    d'8
    ds'8
    s
    % ds8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    cs8
    a8
    ds8
    gqs
  }
  \tuplet 20/12 {
    f'8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    s s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs!
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs!
    f'8
    a'8
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    a'8
    e8
    s
    % e8
    gqs
    ds8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c!
    d'8
    s
    % d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    a'8
    e8
  }
  \tuplet 19/12 {
    d'8 ^\markup { \italic { clb } }
    s s
    % d8
    % d8
    atqs
    e8
    d'8
    ds8
    cs8
    gqs
    atqs
    s
    % atqs
    d'8
    s
    % d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    ds8
    d'8
    a'8
    cs8
    d'8
  }
  \tuplet 18/12 {
    a'8 ^\markup { \italic { heavy } }
    atqs'
    e'8
    d'8
    s s
    % d8
    % d8
    e'8
    s
    % e8
    d'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    d'8
    s
    % d8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    d'8
    e'8
    d'8
    s
    % d8
  }
  \tuplet 17/12 {
    f'8 ^\markup { \italic { pizz } }
    ef'8
    bf8
    ef8
    e'8
    ef'8
    aqf
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    e'8
    bf8
    ef8
    bf8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g'!
    ef'8
    s
    % ef8
  }
  \tuplet 16/12 {
    bqs' ^\markup { \italic { clb } }\ppp
    bf'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    ef8
    bf'8
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    d8
    ef'8
    bf8
    s s
    % bf8
    % bf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    aqf
    f'8
  }
  \tuplet 15/12 {
    ef'8 ^\markup { \italic { heavy } }
    s s
    % ef8
    % ef8
    aqf
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    bqs
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
    ef'8
  }
  \tuplet 14/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'! ^\markup { \italic { pizz } }
    ef8
    s
    % ef8
    bf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    ef'8
    bf8
    ef'8
    s
    % ef8
    f8
    aqf'
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    ef8
  }
  \tuplet 13/12 {
    gqs ^\markup { \italic { clb } }
    a8
    s
    % a8
    d'8
    a'8
    d'8
    a'8
    s
    % a8
    d'8
    atqs
    d'8
    e'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
  }
  \tuplet 12/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs! ^\markup { \italic { heavy } }
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
    s s
    % a8
    % a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
    e'8
  }
  \tuplet 11/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs! ^\markup { \italic { clb } }
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs!
    gqs
    d8
    s
    % d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs!
    a8
    s
    % a8
  }
  \tuplet 10/12 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs! ^\markup { \italic { clt } }
    d'8
    a'8
    d'8
    a'8
    d'8
    e8
    s
    % e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c''!
  }
  \tuplet 9/12 {
    cs''8 ^\markup { \italic { pizz } }\p
    s
    % cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    ds''8
    gs'8
    cs''8
    gs'8
    cs''8
    s
    % cs8
  }
  \tuplet 8/12 {
    cs8 ^\markup { \italic { clb } }
    s s s
    % cs8
    % cs8
    % cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f!
    cs'8
    gs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
  }
  \tuplet 7/12 {
    cs'8 ^\markup { \italic { clt } }
    s s
    % cs8
    % cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    gs'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % b!
  }
  \tuplet 6/12 {
    cs8 ^\markup { \italic { pizz } }
    s s s
    % cs8
    % cs8
    % cs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    f'!
    gs8
  }
  \tuplet 5/12 {
    c'8 ^\markup { \italic { clb } }
    s s s s
    % c8
    % c8
    % c8
    % c8
  }
  \tuplet 4/12 {
    g8 ^\markup { \italic { clt } }
    c8
    s
    % c8
    g8
  }
  \tuplet 3/12 {
    c8 ^\markup { \italic { pizz } }
    s s
    % c8
    % c8
  }
  \tuplet 2/12 {
    c''8 ^\markup { \italic { clb } }
    s
    % c8
  }
  \tuplet 1/12 {
    c''8 ^\markup { \italic { clt } }\pppp ]
  }
}
