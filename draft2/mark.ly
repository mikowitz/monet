
\version "2.19.82"
\language "english"
\relative c' {
       \set Score.markFormatter
         = #(lambda (mark context)
           (make-bold-markup
             (make-box-markup
               (number->string (ly:context-property context
                                                    'currentBarNumber)))))

       c1 \bar "||" \mark \default c1 c1 \mark \default c1 \bar "|."
     }
