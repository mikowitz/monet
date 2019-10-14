\version "2.19.48"

% hbu = #(define-event-function (parser location ) ()
% #{
%   \once\override TextSpanner.layer = #-1
%   \once\override TextSpanner.style = #'dashed-line
%   \once\override TextSpanner.color = #(x11-color 'white)
%   \once\override TextSpanner.thickness = #1
%   \once\override TextSpanner.dash-fraction = #0.0
%   \once\override TextSpanner.to-barline = ##t
%   \once\override TextSpanner.bound-details.left.text = \markup {
%     \with-color #(x11-color 'grey50)
%     \override #'(line-cap-style . 'square)
%     \override #'(thickness . 30)
%     \drawline #(0 . -9)
%   }
% #})


halfBoxUp = {
  \once\override TextSpanner.layer = #-1
  \once\override TextSpanner.style = #'dashed-line
  \once\override TextSpanner.color = #(x11-color 'white)
  \once\override TextSpanner.thickness = #1
  \once\override TextSpanner.dash-fraction = #0.0
  \once\override TextSpanner.to-barline = ##t
  \once\override TextSpanner.bound-details =
  #`((left
  (text . ,#{ \markup {
        \with-color #(x11-color 'grey50)
        \override #'(line-cap-style . 'square)
        \override #'(thickness . 30)
        \draw-line #'(0 . -9)
        } #})
  (Y . 0)
  (padding . 0))
     (right
       (text . ,#{ \markup {
            \with-color #(x11-color 'white)
             \override #'(thickness . 2)
             \draw-line #'(0 . -9) } #})
       (Y . 0)
       (padding . -1.5)))
}

halfBoxDown = {
  \once\textSpannerDown
  \once\override TextSpanner.layer = #-1
  \once\override TextSpanner.style = #'dashed-line
  \once\override TextSpanner.color = #(x11-color 'white)
  \once\override TextSpanner.thickness = #1
  \once\override TextSpanner.dash-fraction = #0.0
  \once\override TextSpanner.to-barline = ##t
  \once\override TextSpanner.bound-details =
  #`((left
  (text . ,#{ \markup {
        \with-color #(x11-color 'grey50)
        \override #'(line-cap-style . 'square)
        \override #'(thickness . 30)
        \draw-line #'(0 . 9)
        } #})
  (Y . 0)
  (padding . 0))
     (right
       (text . ,#{ \markup {
             \with-color #(x11-color 'white)
             \override #'(thickness . 2)
             \draw-line #'(0 . 9) } #})
       (Y . 0)
       (padding . -1.5)))
}

<<
  \new Staff
  \relative c'' {
    c4 \halfBoxUp
    \override TextSpanner.layer = #-1
    % \once \override TextSpanner.bound-details.left.padding = #0
    c8*2 -\tweak #'extra-offset #'(0 . -10 ) ^\markup { "clt" } -\tweak #'extra-offset #'(0 . -9) % this tweak to set half box joints if needed
    \startTextSpan  c  \stopTextSpan c4  |
  }
  \new Staff
  \relative c' {
    c4 \halfBoxDown
    c -\tweak #'extra-offset #'(0 . 9) % this tweak to set half box joints if needed
    \startTextSpan c \stopTextSpan c  |
  }
>>
