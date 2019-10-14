\version "2.19.82"

#(define* (center-stencil-on-stencil stil-a stil-b #:optional axis)
   "Return a copy of stencil @var{stil-b} that has been moved
   so it is centered on stencil @var{stil-a} on @var{axis}. When
   @var{axis} is omitted, the centering is done on both X and Y
   axes. @var{axis} can be X or Y, which are equivalent to 0 and 1."
   (if axis
       ;; center on one axis only
       (ly:stencil-translate-axis
        (ly:stencil-aligned-to stil-b axis CENTER)
        (interval-center (ly:stencil-extent stil-a axis))
        axis)
       ;; center on both X and Y axes
       (ly:stencil-translate
        (centered-stencil stil-b)
        (cons
         (interval-center (ly:stencil-extent stil-a X))
         (interval-center (ly:stencil-extent stil-a Y))))))

circle = #(make-circle-stencil 1 0.4 #f)

#(define upbow-stil
   (make-path-stencil
    '(
      moveto 0 1.6
      curveto -1 1 1 1 1.2 3.6
      closepath
     )

    .01 1 1 #t))

test = #(markup
  #:line
  (#:with-dimensions
   (cons -0.2 1.6)
   (cons 0 1.2)
   (#:postscript "0.15 setlinewidth
    0.9 0.6 moveto
    0.4 0.6 0.5 0 361 arc
    stroke")))


line = #(make-connected-path-stencil
'((0 0) (3 3))
  0.4 1 1 #f #f)

square =
#(make-connected-path-stencil
  '((0 0) (4 0) (4 4) (0 4) (0 0))
  0.4 1 1 #f #f)

blue-square =
#(stencil-with-color
  (make-filled-box-stencil '(0.4 . 2) '(0.4 . 2))
  blue)

\markup
\override #'(word-space . 3)
\line {
  \stencil #(ly:stencil-add circle blue-square)
  \stencil #(ly:stencil-add square blue-square)
  \stencil #(ly:stencil-add square
              (center-stencil-on-stencil square blue-square X))
  \stencil #(ly:stencil-add square
              (center-stencil-on-stencil square blue-square Y))
  \stencil #(ly:stencil-add line
              (center-stencil-on-stencil line circle))
  \stencil #(ly:stencil-add line
              (center-stencil-on-stencil line upbow-stil))
  \stencil #(ly:stencil-add line
              (center-stencil-on-stencil line test))
}
