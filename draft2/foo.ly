\version "2.19.82"

#(define-markup-command (foo parser location)()
  (display-scheme-music #{ \chordmode { c:m } #})
  (interpret-markup
    parser
    location
    #{
      \markup
      \postscript #"
      0.1 setlinewidth
      -0.5 -0.5 moveto
      0.5 0.5 lineto
      0 0 0.4 45 406 arc
      stroke
      "
    #}
    ))

\markup \foo

    % #{ \markup \combine \draw-circle #1 #0.4 ##f \draw-line #'(2 . 1) #}
      % \postscript #"0.15 setlinewidth
  % -0.9 0.6 moveto
  % 4 0.6 lineto
  % 0.9 0.6 moveto
  % 0.4 0.6 0.5 0 361 arc
  % stroke
  % 1.0 0.6 0.5 0 361 arc
  % stroke
  % "
      % \with-dimensions #'(-0.2 . 1.6) #'(0 . 1.2)

          (interpret-markup
            (ly:grob-layout grob)
            (ly:grob-alist-chain grob (
                                       ly:output-def-lookup
                                       (ly:grob-layout grob)
                                       'text-font-defaults))
            #{
              \markup
              \postscript #"
              0.1 setlinewidth
              0 0.5 moveto
              1 0.5 lineto
              0 0 0.4 45 406 arc
              stroke
              "
            #}
