% {
%   \displayMusic {
%     \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
%     \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
%     \tweak X-offset #-4
%     \tweak Y-offset #5
%     \mark \markup { \bold \fontsize #2 "00:16" }

%     \tweak X-offset #5
%     c''8 []
%   }
% }

\version "2.19.83"

\new StaffGroup <<
  \override Score.SpacingSpanner.strict-grace-spacing = ##t
  \new Staff {
    \afterGrace c''8 { c''16 [ c''16 c'' ] }
    d''8
  }
  \new Staff {
    c'16 d'16 e'8
  }
>>
