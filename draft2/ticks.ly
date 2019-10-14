ticker = #(define-music-function (parser location timecode) (string?)
  #{
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \tweak X-offset #-5
    \tweak Y-offset #5
    \mark \markup { \bold \fontsize #2 #timecode }
  #}
)

ticks = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \override Score.BarNumber.font-size = #4
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.5 ly:text-interface::print)
  \override Score.BarNumber.Y-offset = #5
 % \set Score.markFormatter
 %   = #(lambda (mark context)
 %     (make-bold-markup
 %       (make-box-markup
 %         (number->string (ly:context-property context
 %                                              'currentBarNumber)))))
 %  \mark
 \bar ""
  s1 \bar "'" s1
  \ticker #"00:16"
  \break
  s1 \bar "'" s1
  \ticker #"00:32"
  \break
  s1 \bar "'" s1
  \ticker #"00:48"
  \break
  s1 \bar "'" s1
  \ticker #"01:04"
  \break
  s1 \bar "'" s1
  \ticker #"01:20"
  \break
  s1 \bar "'" s1
  \ticker #"01:36"
  \break
  s1 \bar "'" s1
  \ticker #"01:52"
  \break
  s1 \bar "'" s1
  \ticker #"02:08"
  \break
  s1 \bar "'" s1
  \ticker #"02:24"
  \break
  s1 \bar "'" s1
  \ticker #"02:40"
  \break
  s1 \bar "'" s1
  \ticker #"02:56"
  \break
  s1 \bar "'" s1
  \ticker #"03:12"
  \break
  s1 \bar "'" s1
  \ticker #"03:28"
  \break
  s1 \bar "'" s1
  \ticker #"03:44"
  \break
  s1 \bar "'" s1
  \ticker #"04:00"
  \break
  s1 \bar "'" s1
  \ticker #"04:16"
  \break
  s1 \bar "'" s1
  \ticker #"04:32"
  \break
  s1 \bar "'" s1
  \ticker #"04:48"
  \break
  s1 \bar "'" s1
  \ticker #"05:04"
  \break
  s1 \bar "'" s1
  \ticker #"05:20"
  \break
  s1 \bar "'" s1
  \ticker #"05:36"
  \break
  s1 \bar "'" s1
  \ticker #"05:52"
  \break
  s1 \bar "'" s1
  \ticker #"06:08"
  \break
  s1 \bar "'" s1
  \ticker #"06:24"
  \break
  s1 \bar "'" s1
  \ticker #"06:40"
  \break
  s1 \bar "'" s1
  \ticker #"06:56"
  \break
  s1 \bar "'" s1
  \ticker #"07:12"
  \break
  s1 \bar "'" s1
  \ticker #"07:28"
  \break
  s1 \bar "'" s1
  \ticker #"07:44"
  \break
  s1 \bar "'" s1
  \ticker #"08:00"
  \break
  s1 \bar "'" s1
  \ticker #"08:16"
  \break
  s1 \bar "'" s1
  \ticker #"08:32"
  \break
  s1 \bar "'" s1
  \ticker #"08:48"
  \break
  s1 \bar "'" s1
  \ticker #"09:04"
  \break
  s1 \bar "'" s1
  \ticker #"09:20"
  \break
  s1 \bar "'" s1
  \ticker #"09:36"
  \break
  s1 \bar "'" s1
  \ticker #"09:52"
  \break
  s1 \bar "'" s1
  \ticker #"10:08"
  \break
  s1 \bar "'" s1
  \ticker #"10:24"
  \break
  s1 \bar "'" s1
  \ticker #"10:40"
  \break
  s1 \bar "'" s1
  \ticker #"10:56"
  \break
  s1 \bar "'" s1
  \ticker #"11:12"
  \break
  s1 \bar "'" s1
  \ticker #"11:28"
  \break
  s1 \bar "'" s1
  \ticker #"11:44"
  \break
  s1 \bar "'" s1
  \ticker #"12:00"
  \bar "|."
}
