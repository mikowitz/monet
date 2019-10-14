#!/usr/bin/env ruby

require "open3"

_stdout, stderr, _status = Open3.capture3("lilypond #{ARGV[0]}.ly")

stderr.scan(/Converting to `(.*\.pdf)'/).flatten.each do |file|
  `open #{file}`
end


