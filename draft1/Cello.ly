Cello = {
  \autoBeamOff
  \override Beam.damping = #20
  \clef tenor
  \tuplet 1/16 {
    b'8 ^\markup { \italic { clt } }\pppp  [
  }
  \tuplet 2/16 {
    b'8 ^\markup { \italic { light } }
    s
    % b'8
  }
  \tuplet 1/16 {
    b'8 ^\markup { \italic { pizz } }
  }
  \clef bass
  \tuplet 2/16 {
    b8 ^\markup { \italic { clt } }
    s
    % b'8
  }
  \tuplet 3/16 {
    fs'8 ^\markup { \italic { light } }
    s s
    % fs,8
    % fs,8
  }
  \tuplet 4/16 {
    b,8 ^\markup { \italic { pizz } }
    s s
    % b,8
    % b,8
    fs,8
  }
  \tuplet 5/16 {
    b,8 ^\markup { \italic { clt } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    ds!
    b,8
    s s
    % b,8
    % b,8
  }
  \tuplet 4/16 {
    b,8 ^\markup { \italic { light } }\p
    s
    % b,8
    fs,8
    s
    % fs,8
  }
  \tuplet 5/16 {
    b,8 ^\markup { \italic { pizz } }
    s
    % b,8
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    ds,!
    b,8
  }
  \tuplet 6/16 {
    cs,8 ^\markup { \italic { clt } }
    fs,8
    s
    % fs,8
    cs,8
    s s
    % cs,8
    % cs,8
  }
  \tuplet 7/16 {
    cs,8 ^\markup { \italic { light } }
    fs,8
    s
    % fs,8
    cs,8
    fs,8
    s
    % fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
  }
  \tuplet 8/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,! ^\markup { \italic { pizz } }
    cs,8
    fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    cs8
    fs,8
  }
  \tuplet 9/16 {
    cs,8 ^\markup { \italic { light } }
    fs,8
    s
    % fs,8
    gs,8
    cs8
    gs,8
    fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
  }
  \tuplet 8/16 {
    fs8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    fs8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    cs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as,!
  }
  \tuplet 10/16 {
    fs8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    fs8
    gs,8
    fs,8
    s s
    % fs,8
    % fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    fs,8
    gs,8
  }
  \tuplet 11/16 {
    fs,8 ^\markup { \italic { light } }\ppp
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    fs,8
    s
    % fs,8
    cs,8
    fs,8
    s
    % fs,8
    cqf
    fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    cs8
  }
  \tuplet 12/16 {
    cs'8 ^\markup { \italic { pizz } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as,!
    cs,8
    fs,8
    s s
    % fs,8
    % fs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    fs,8
    cs8
    fs8
  }
  \tuplet 13/16 {
    fs,8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    fs,8
    dqs,
    gs,8
    cqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    as,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % as,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    fs,8
    cs,8
    s
    % cs,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
  }
  \tuplet 14/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,! ^\markup { \italic { light } }
    gqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    a,8
    s s s s
    % a,8
    % a,8
    % a,8
    % a,8
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
    e8
  }
  \tuplet 13/16 {
    d8 ^\markup { \italic { pizz } }
    atqs
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    a,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs,!
    a,8
    atqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    d8
  }
  \tuplet 15/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c! ^\markup { \italic { ord } }
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c,!
    cs8
    d8
    a,8
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    gqs,
    s
    % gqs,
    cs8
    s
    % cs,8
    a,8
    e,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    atqs,
  }
  \tuplet 16/16 {
    d,8 ^\markup { \italic { light } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    atqs,
    d8
    s
    % d,8
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c,!
  }
  \tuplet 17/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'! ^\markup { \italic { pizz } }
    d8
    atqs
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    e8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs,!
    a,8
    ds,8
    d8
    a8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs!
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % c,!
    d,8
    e,8
  }
  \tuplet 16/16 {
    a8 ^\markup { \italic { mid } }\mf
    d8
    s
    % d,8
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
    s s
    % d,8
    % d,8
  }
  \tuplet 18/16 {
    gqs, ^\markup { \italic { pizz } }
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    e8
    a,8
    cs,8
    a,8
    e8
    gqs,
    s
    % gqs,
    a,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c!
    cs,8
    e,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    c'!
    d8
    e,8
  }
  \tuplet 19/16 {
    d8 ^\markup { \italic { ord } }
    s s
    % d,8
    % d,8
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
    s
    % d,8
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
    s s s
    % d,8
    % d,8
    % d,8
    e,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    fs,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowdown" }
    % fs,!
    e,8
    d,8
    s
    % d,8
    e,8
  }
  \tuplet 21/16 {
    gf,8 ^\markup { \italic { pizz } }
    f8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    e,8
    s s
    % e,8
    % e,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    ef8
    bqs,
    s
    % bqs,
    d,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % df,!
    bf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af!
  }
  \tuplet 22/16 {
    d8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    ef8
    s
    % ef,8
    f,8
    s
    % f,8
    aqf
    ef8
    s
    % ef,8
    e,8
    d8
    bqs,
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
    s
    % e,8
    gf8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    bqs
    bf8
    bqs
    s
    % bqs,
    bf8
    ef8
  }
  \tuplet 23/16 {
    bqs, ^\markup { \italic { pizz } }
    gf,8
    e,8
    bf,8
    f,8
    ef,8
    gf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a!
    bqs
    aqf,
    ef8
    f,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    aqf,
    bqs,
    f'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a!
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g,!
    ef8
    f,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
  }
  \tuplet 24/16 {
    f,8 ^\markup { \italic { ord } }\mp
    aqf,
    s
    % aqf,
    ef,8
    bqs,
    f8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    bqs,
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
    bqs,
    bf8
  }
  \tuplet 25/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g! ^\markup { \italic { mid } }
    f8
    s
    % f,8
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g!
    gf8
    s
    % gf,8
    bf,8
    ef8
    s
    % ef,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    bf,8
    s
    % bf,8
    ef,8
    s
    % ef,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    d8
    bqs,
    aqf
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a,!
    e,8
    s
    % e,8
    ef8
    s
    % ef,8
  }
  \tuplet 26/16 {
    ef,8 ^\markup { \italic { pizz } }
    bf,8
    ef8
    aqf
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df'!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af!
    gf,8
    f,8
    bqs,
    bf8
    ef8
    aqf,
    bf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b!
    ef8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af,!
    gf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    af,!
    gf,8
    f8
    bf,8
    d8
    ef8
  }
  \tuplet 27/16 {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowup" }
    a,! ^\markup { \italic { ord } }
    d,8
    ef,8
    gf,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % g,!
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % df,!
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
    ef,8
    s
    % ef,8
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
    bqs,
    f8
    bqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    g,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    b,!
    gf,8
    bqs,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    df!
  }
  \tuplet 29/16 {
    d8 ^\markup { \italic { ord } }
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    aqf,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % bf,!
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    c,8
    s
    % c,8
    d8
    b8
    d8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    c,8
    s
    % c,8
    b8
    d'8
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowup" }
    bf!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % bf,!
    fqs
    b8
    s
    % b,8
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
    b,8 ^\markup { \italic { mid } }
    g,8
    s
    % g,8
    c,8
    s
    % c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e,!
    aqf,
    c,8
    fqs,
    b,8
    aqf
    s
    % aqf,
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    e!
    aqf,
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % bf,!
    g,8
    b8
    g,8
    s
    % g,8
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
    g,8 ^\markup { \italic { heavy } }
    s
    % g,8
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
    fqs,
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
    fqs
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.natural.arrowdown" }
    % e,!
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
  }
  \tuplet 32/16 {
    d'8 ^\markup { \italic { ord } }\f
    c,8
    s
    % c,8
    fqs'
    c,8
    b'8
    c,8
    s
    % c,8
    g'8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.sharp.arrowup" }
    fs'!
    c,8
    s
    % c,8
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % bf,!
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
    s
    % c,8
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
    d8 ^\markup { \italic { mid } }\mp
    g,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf!
    g,8
    s
    % g,8
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
    s
    % \once \override Accidental.stencil = #ly:text-interface::print
    % \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    % bf,!
  }
  \tuplet 8/16 {
    c,8 ^\markup { \italic { heavy } }\mf
    s s s s
    % c,8
    % c,8
    % c,8
    % c,8
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \musicglyph #"accidentals.flat.arrowdown" }
    bf,!
    g,8
    c8
  }
  \tuplet 4/16 {
    c,8 ^\markup { \italic { mid } }\ppp
    s
    % c,8
    g,8
    c'8
  }
  \tuplet 2/16 {
    \clef tenor
    c''8 ^\markup { \italic { pizz } }\p
    s
    % c,8
  }
  \tuplet 1/16 {
    c''8 ^\markup { \italic { clt } }\pppp ]
  }

}
