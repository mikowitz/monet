require "json"
require "csv"

class Calculator
  PARTIALS = [
    0,
    0,
    7,
    0,
    [4, "-1/8"],
    7,
    [10, "-1/6"],
    0,
    2,
    [4, "-1/8"],
    [6, "-1/4"],
    7,
    [8, "+1/4"],
    [10, "-1/6"],
    11,
    0,
    1,
    2,
    3,
    [4, "-1/8"],
    [5, "-1/6"],
    [6, "-1/4"],
    [6, "+1/6"],
    7,
    [8, "-1/6"],
    [8, "+1/4"],
    9,
    [10, "-1/6"],
    [10, "+1/6"],
    11,
    [11, "+1/4"],
    0
  ]

  def initialize(rouen, scale)
    @directory = rouen
    @scale = scale
  end

  def parse_munsell(munsell)
    hue, value_chroma = munsell.split(" ")
    _, bow_motion, bow_range = hue.match(/([\d\.]+)(\w{1,2})/).to_a
    value, chroma = value_chroma.split("/")
    [
      bow_motion(bow_motion).ljust(6),
      bow_range(bow_range).ljust(6),
      value.ljust(8),
      chroma
    ]
  end

  def bow_range(range)
    case range
    when "R" then "F"
    when "YR" then "F:M"
    when "Y" then "M"
    when "GY" then "M:T"
    when "G" then "T"
    when "BG" then "F:T"
    when "B" then "1/2 clt"
    when "PB" then "clt"
    when "P" then "clb"
    when "RP" then "pizz"
    when "N" then "pizz"
    else "*#{range.to_s}"
    end
  end

  def bow_motion(mot)
    case mot
    when "2.5" then "nat."
    when "5" then "nat."
    when "7.5" then "circ."
    when "10" then "circ."
    else "*#{mot.to_s}"
    end
  end

  def dyn(s, max)
    return "ff" if s < max/10
    return "f" if s < max * 2/10
    return "mf" if s < max * 3/10
    return "mp" if s < max * 4/10
    return "p" if s < max * 1/2
    return "pp" if  s < max * 3/4
    return "ppp"
  end

  def munsell(px)
    round = ->(h) { (h/255.0).round(3) }
    script = "munsell::rgb2mnsl(#{round[px["red"]]}, #{round[px["green"]]}, #{round[px["blue"]]})"
    res = `R -e "#{script}"`
    res.strip.split("\n")[-3].split('"').last
  end

  def hex(pixel)
    [
      pixel["red"],
      pixel["green"],
      pixel["blue"]
    ].map do |c|
      c.to_s(16).rjust(2, "0")
    end.join("").upcase
  end

  def partial(h, takes)
    # (h / (360.0/x)).floor.round + 1
    partial_no = h % takes
    # "#{partial_no} -> #{partial_to_s(partial_no)}"
    partial_to_s(partial_no)
  end

  def partial_to_s(p)
    p = PARTIALS[p]
    if p.instance_of?(Array)
      "#{@scale[p[0]]} #{p[1]}"
    else
      "#{@scale[p]}"
    end
  end


  PRESSURE_NOTEHEADS = [
    "harmonic",
    "harmonic-mixed",
    "triangle",
    "xcircle",
    "default"
  ]

  def do_map(x, s1, e1, s2, e2)
# double slope = 1.0 * (output_end - output_start) / (input_end - input_start)
# output = output_start + slope * (input - input_start)
    slope = (e2.to_f - s2) / (e1.to_f - s1)
    s2 + (slope * (x - s1) + 0.5).floor
  end

  def get_pitches(divs, takes)
    json = JSON.parse(File.read(@directory + "/#{divs}.json"))
    # hues = json.
      # select{|px| px["row"] == px["column"]}.
      # map{|px| px["H"] + px["S"] + px["B"] }.uniq.sort.map{|v| do_map(v, 0, 560, 0, 360)}
    # min, max = [hues[0], hues[-1]]
    # div = (max.to_f - min) / divs
    diags = json.select{|px| px["row"] == px["column"] }.map{|px| px["H"] + px["S"] + px["B"] }.map{|v| do_map(v, 0, 560, 0, 360)}
    # puts [min, max].inspect
    ["\\tuplet #{takes}/15 {",
    diags[0...takes].map do |c|
      # x = (0..divs).find {|di| min + (div * di) >= c} || 0
      # p = partial_to_s(x % takes)
      p = PARTIALS[c % takes]
      if p.instance_of?(Array)
        "  #{@scale[p[0]]}'8^\\markup { \"#{p[1]}\" }"
      else
        "  #{@scale[p]}'8"
      end
    end.join("\n"),
    "}"
    ].join("\n")
  end

  def to_lily(divs, takes)
    json = JSON.parse(File.read(@directory + "/#{divs}.json"))
    max = json.map{|px| px["S"]}.uniq.max


    "\\break\n\\tuplet #{takes}/15 {\n" +
    json.select{|px| px["row"] == px["column"] }[0...takes].map do |px|
      mot, range, _pos, pres = parse_munsell(munsell(px))
      d = dyn(px["S"], max)
      p = PARTIALS[px["H"] % takes]
      x = if p.instance_of?(Array)
        "  #{@scale[p[0]]}'\\#{d} ^\\markup { \"#{p[1]}\" }"
      else
        "  #{@scale[p]}'\\#{d}"
      end
      [
        "  \\once \\override NoteHead.style = #'#{PRESSURE_NOTEHEADS[px["B"] % 5]}",
        x + " ^\\markup { \"(#{mot.strip}, #{range.strip})\" } _\\markup { \"#{pres.strip}\" }"
      ].join("\n")
    end.join("\n") + "\n}"
  end


  def run(divs, takes, file)
    json = JSON.parse(File.read(@directory + "/#{divs}.json"))

    max = json.map{|px| px["S"]}.uniq.max

    file << "partial, dyn, f pres., motion, attack, bow pos., bow pres."
    file << "\n"
    json.select{|px| px["row"] == px["column"] }[0...takes].each do |px|
      file << [
        # ((px["H"] % takes)).to_s.ljust(5),
        partial(px["H"], takes).ljust(7),
        dyn(px["S"], max).ljust(3),
        (px["B"] % 5).to_s.ljust(7),
        # munsell(px),
        parse_munsell(munsell(px))
      ].join(", ")
      file << "\n"
    end
  end
end

scales = {
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

_file = File.open("clo.txt", "w")

CSV.read("vla.csv").each_with_index do |(d, p), i|
  # puts "processing section #{i+1}"
  # file << "====== SECTION #{i+1} ======\n"
  # Calculator.new("rouen-4", scales[p]).run(i+1, d.to_i, file)
  puts Calculator.new("rouen-3", scales[p]).get_pitches(i+1, d.to_i)
end

# file.close

# counts = %w(1 1 2 1 2 3 2 3 4 3 4 5 4 5 6 5 6 7 6 7 8 7 8 9 8 9 10 9 10 11 10 11 12 11 12 13 12 13 14 13 14 15 14 15 16 16 15 14 15 14 13 14 13 12 13 12 11 12 11 10 11 10 9 10 9 8 9 8 7 8 7 6 7 6 5 6 5 4 5 4 3 4 3 2 3 2 1 2 1 1)
# counts.each_with_index do |x, i|
#   # puts "#{i} #{x}"
#   puts "SECTION #{i} ======>"
#   Calculator.new("rouen-1").run(i+1, x.to_i)
# end
