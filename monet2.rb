require "json"
require "csv"



class Calculator
  ATTACKS = %w(clt light pizz ord mid heavy pizz clb clt)
  DYNAMICS = [
    "\\pppp \\<",
    "\\p \\>",
    "\\ppp \\<",
    "\\mf \\>",
    "\\mp \\<",
    "\\f \\>",
    "\\mp \\<",
    "\\mf \\>",
    "\\ppp \\<",
    "\\p \\>",
    "\\pppp"
  ]
	SCALES = {
		"c" =>  %w(c cs d ef e f fs g af a bf b),
		"cs" =>  %w(cs d ds e f fs g gs a as b c),
		"d" =>  %w(d ds e f fs g gs a as b c cs),
		"ef" =>  %w(ef e f gf g af a bf b c df d),
		"e" =>  %w(e f fs g gs a as b c cs d ds),
		"f" =>  %w(f gf g af a bf b c df d ef e),
		"fs" =>  %w(fs g gs a as b c cs d ds e f),
		"g" =>  %w(g gs a as b c cs d ds e f fs),
		"af" =>  %w(af a bf b c df d ef e f gf g),
		"a" =>  %w(a as b c cs d ds e f fs g gs),
		"bf" =>  %w(bf b c df d ef e f gf g af a),
		"b" =>  %w(b c cs d ds e f fs g gs a as)
	}
  PARTIALS = [
    0, 0, 7, 0, [4, "-1/8"], 7, [10, "-1/6"], 0, 2, [4, "-1/8"],
    [6, "-1/4"], 7, [8, "+1/4"], [10, "-1/6"], 11, 0, 1, 2, 3,
    [4, "-1/8"], [5, "-1/6"], [6, "-1/4"], [6, "+1/6"], 7, [8, "-1/6"],
    [8, "+1/4"], 9, [10, "-1/6"], [10, "+1/6"], 11, [11, "+1/4"], 0
  ]

  def initialize(rouen, scale)
    @directory = rouen
    @scale = scale
  end

  def final_accidental(pitch, offset, octavation="")
    if pitch.match?(/.s$/)
      case offset
      when "-1/8"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.sharp.arrowdown\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "-1/6"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.sharp.arrowdown\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "-1/4"
        "  " + pitch.sub(/s$/, "qs") + octavation
      when "+1/4"
        "  " + pitch.sub(/s$/, "tqs") + octavation
      when "+1/6"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.sharp.arrowup\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "+1/8"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.sharp.arrowup\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      end
    elsif pitch.match?(/.f$/)
      case offset
      when "-1/8"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.flat.arrowdown\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "-1/6"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.flat.arrowdown\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "-1/4"
        "  " + pitch.sub(/f$/, "tqf") + octavation
      when "+1/4"
        "  " + pitch.sub(/f$/, "qf") + octavation
      when "+1/6"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.flat.arrowup\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "+1/8"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.flat.arrowup\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      end
    else
      case offset
      when "-1/8"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.natural.arrowdown\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "-1/6"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.natural.arrowdown\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "-1/4"
        "  " + pitch + "qf" + octavation
      when "+1/4"
        "  " + pitch + "qs" + octavation
      when "+1/6"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.natural.arrowup\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      when "+1/8"
        [
          "  \\once \\override Accidental.stencil = #ly:text-interface::print",
          "  \\once \\override Accidental.text = \\markup { \\musicglyph #\"accidentals.natural.arrowup\" }",
          "  #{pitch}#{octavation}!"
        ].join("\n")
      end
    end
  end

  def do_map(x, s1, e1, s2, e2)
    slope = (e2.to_f - s2) / (e1.to_f - s1)
    s2 + (slope * (x - s1) + 0.5).floor
  end

  def get_pitches(divs, takes, tuplet_base, octavation, attack, dyn = nil)
    json = JSON.parse(File.read(@directory + "/#{divs}.json"))
    diags = json.select{|px| px["row"] == px["column"] }.map{|px| px["H"] + px["S"] + px["B"] }.map{|v| do_map(v, 0, 560, 0, 360)}
    ["\\tuplet #{takes}/#{tuplet_base} {",
    diags[0...takes].each_with_index.map do |c, i|
      p = PARTIALS[c % takes]
      if p.instance_of?(Array)
        final_accidental(@scale[p[0]], p[1], octavation)
        # "  #{@scale[p[0]]}8^\\markup { \"#{p[1]}\" }"
      else
        "  #{@scale[p]}#{octavation}8"
      end + (i == 0 ? " ^\\markup { \\italic { #{attack} } }" : "") + (i == 0 && !dyn.nil? ? DYNAMICS[dyn] : "")
    end.join("\n"),
    "}"
    ].join("\n")
  end
end

tuplet_bases = {
  vln1: 8,
  vln2: 15,
  vla: 12,
  clo: 16
}

octavations = {
  vln1: "'",
  vln2: "'",
  vla: "",
  clo: ","
}

attacks = {
  vln1: [12, 26, 38, 52, 65, 78, 90],
  vln2: [9, 19, 28, 36, 40, 44, 48],
  vla: [6, 13, 19, 29, 39, 49, 60],
  clo: [12, 23, 35, 42, 43, 44, 45]
}

dynamics = {
  vln1: [0, 8, 17, 26, 35, 44, 53, 62, 71, 80, 89],
  vln2: [0, 6, 13, 19, 25, 31, 34, 37, 40, 43, 47],
  vla: [0, 4, 9, 14, 19, 23, 30, 37, 44, 51, 59],
  clo: [0, 7, 15, 23, 31, 39, 40, 41, 42, 43, 44]
}


{
  vln1: "ViolinOne",
  vln2: "ViolinTwo",
  vla: "Viola",
  clo: "Cello"
}.each_with_index do |(inst, name), inst_i|
  puts name
  f = File.open(name + ".ly", "w")
  f << "#{name} = {\n"
  CSV.read(inst.to_s + ".csv").each_with_index do |(d, p), i|
    attack_index = attacks[inst].index { |y| y > i }
    attack = Calculator::ATTACKS[attack_index...attack_index+3][i % 3]
    attack = Calculator::ATTACKS[attack_index...attack_index+3][i % 3]
    dyn = dynamics[inst].include?(i) ? dynamics[inst].index(i) : nil
    f << Calculator.new("rouen-#{inst_i+1}", Calculator::SCALES[p]).get_pitches(i+1, d.to_i, tuplet_bases[inst], octavations[inst], attack, dyn) + "\n"
  end
  f << "\n}"
  f.close
end

