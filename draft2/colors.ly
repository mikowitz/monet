\version "2.19.82"

\include "span.ly"


#(define (makeDeltaSpan
          y-l-lower y-l-upper         ; number: Y-dimensions (left edge)
          y-r-lower y-r-upper         ; number: Y-dimensions (left edge)
          frame-color fill-color      ; (color of ##f): colors for outer and inner polygon (won't be drawn if set to ##f)
          stepLeft stepRight          ; number: size of zigzag elements for left and right edge (vertical edge / no zigzag if set to zero)
          open-on-bottom open-on-top  ; boolean: no visible frame on bottom/top edge (no distance between inner and outer polygon's edges)
          thick                       ; number: frame thickness - distance between inner and outer polygon's edges
          pad                         ; number: broken-bound-padding - amount to shorten spanners where separated by a line break
          X-ext-param                 ; pair: the spanner's X-dimensions
          open-on-left open-on-right  ; boolean: no visible frame on left/right edge (no distance between inner and outer polygon's edges)
          ;   We'll assume that this indicates a line break!
          radius                      ; number: radius for "round-filled-polygon" procedure
          )

   (let* (
           (h-thick (* thick (sqrt 2)))  ; X-distance between left and right edges of inner and outer polygon. Must be "thick" * sqrt 2  (Pythagoras)
           (l-width (* stepLeft  0.5))   ; X-distance of zigzag corners
           (r-width (* stepRight 0.5))
           (Y-ext (cons 0 0))            ; dummy, needed for ly:stencil-expr  (is there a way without it?)
           (X-ext (cons
                   (if (> stepLeft 0)    ; left edge has zigzag shape
                       (- (+ (car X-ext-param) (/ l-width 2)) h-thick)  ; Half of the zigzag space will be taken from inside, other half from the outside. Frame space taken from outside.
                       (if open-on-left  (- (car X-ext-param) h-thick) (- (car X-ext-param) thick))
                       )
                   (if (> stepRight 0)   ; right edge has zigzag shape
                       (+ (- (cdr X-ext-param) (/ r-width 2)) h-thick)
                       (if open-on-right (+ (cdr X-ext-param) h-thick) (+ (cdr X-ext-param) thick))
                       )))
           (X-ext (cons
                   (if open-on-left  (- (+ (car X-ext) pad) (/ l-width 2)) (car X-ext))     ; shorten/lengthen by broken-bound-padding if spanner is broken
                   (if open-on-right (+ (- (cdr X-ext) pad) (/ r-width 2)) (cdr X-ext))))
           (points (list))       ; will contain coordinates for outer polygon
           (points-i (list))     ; will contain coordinates for inner polygon
           (slope-upper (/ (- y-r-upper y-l-upper) (- (cdr X-ext) (car X-ext))))  ; slope of the polygon's upper edge
           (slope-lower (/ (- y-r-lower y-l-lower) (- (cdr X-ext) (car X-ext))))  ; slope of the polygon's lower edge
           (d-upper (if open-on-top    0  (* thick (sqrt (+ (expt slope-upper 2) 1)))))  ; (Pythagoras)
           ; Y-distance between upper edges of inner and outer polygon. Equal to "thick" if upper edge is horizontal.
           ; Increases as the upper edge's slope increases.
           (d-lower (if open-on-bottom 0  (* thick (sqrt (+ (expt slope-lower 2) 1)))))  ; same for lower edge
           ; stuff for later calculations:
           (xtemp 0)
           (yLowerLimit 0)
           (yUpperLimit 0)
           (xp 0)
           (yp 0)
           (jumps 0)
           )

     ; calculate outer polygon's borders:

     ; lower-left corner:
     (set! points (list (cons (car X-ext) y-l-lower)))

     ; calculate coordinates for left (outer) zigzag border:
     (if (and (> stepLeft 0) (not open-on-left))
         (let loop ((cnt y-l-lower))
           (if (< cnt y-l-upper)
               (begin
                (if (and (< cnt y-l-upper) (> cnt y-l-lower))  ; only add to list if point is inside the given Y-range
                    (set! points (cons (cons    (car X-ext)             cnt                 ) points)))
                (if (and (< (+ cnt (/ stepLeft 2)) y-l-upper) (> (+ cnt (/ stepLeft 2)) y-l-lower))
                    (set! points (cons (cons (- (car X-ext) l-width) (+ cnt (/ stepLeft 2)) ) points)))
                (loop (+ cnt stepLeft))))))

     ; upper-left corner:
     (set! points (cons
                   (cons (car X-ext) y-l-upper)
                   points ))
     ; upper-right corner:
     (set! points (cons
                   (cons (cdr X-ext) y-r-upper)
                   points ))
     ; right outer zigzag border:
     (if (and (> stepRight 0) (not open-on-right))
         (let loop ((cnt y-r-upper))
           (if (> cnt y-r-lower)
               (begin
                (if (and (< cnt y-r-upper) (> cnt y-r-lower))
                    (set! points (cons (cons    (cdr X-ext)             cnt                  ) points)))
                (if (and (< (- cnt (/ stepRight 2)) y-r-upper) (> (- cnt (/ stepRight 2)) y-r-lower))
                    (set! points (cons (cons (+ (cdr X-ext) r-width) (- cnt (/ stepRight 2)) ) points)))
                (loop (- cnt stepRight))))))

     ; lower-right corner:
     (set! points (cons
                   (cons (cdr X-ext) y-r-lower)
                   points ))

     ; shrink X-ext for use with inner stuff:
     (if (not open-on-left)
         (if (> stepLeft 0)
             (set! X-ext (cons (+ (car X-ext) h-thick) (cdr X-ext)))
             (set! X-ext (cons (+ (car X-ext)   thick) (cdr X-ext)))
             )
         )
     (if (not open-on-right)
         (if (> stepRight 0)
             (set! X-ext (cons (car X-ext) (- (cdr X-ext) h-thick)))
             (set! X-ext (cons (car X-ext) (- (cdr X-ext)   thick)))
             )
         ) ; Now X-ext represents INNER polygon's width WITHOUT the zigzag corners

     ; Now calculate inner borders:
     ; xp and yp will be the coordinates of the corner currently being calculated

     ; calculate lower-left corner:

     (set! yLowerLimit y-l-lower)
     (set! yUpperLimit y-l-upper)

     (if open-on-left
         (begin
          (set! xp (car X-ext))
          (set! yp (+ y-l-lower d-lower))
          )
         (if (> stepLeft 0)
             (if (not (eq? slope-lower -1))
                 (begin
                  (set! jumps 0)
                  (while (> (- (+ (* slope-lower h-thick) d-lower) (* jumps stepLeft)) stepLeft)
                    (set! jumps (+ 1 jumps)))
                  (set! xtemp (/ (- (+ h-thick (* jumps stepLeft)) d-lower) (+ slope-lower 1)))
                  ; results from the solution for a system of two equations. Forgive me, I'm a maths teacher :-)
                  (if (< xtemp (- h-thick (/ stepLeft 2)))
                      (if (= 1 slope-lower)
                          (set! xtemp h-thick)
                          (set! xtemp
                                (/ (+ (- d-lower (* stepLeft (+ 1 jumps))) h-thick) (- 1 slope-lower)))))  ; another system of 2 equations...
                  (set! xp (+ (- (car X-ext) h-thick) xtemp))
                  (set! yp (+ (+ y-l-lower (* slope-lower xtemp)) d-lower))
                  )
                 )
             (begin
              (set! xp (car X-ext))
              (set! yp (+ (+ y-l-lower (* thick slope-lower)) d-lower))
              )
             )
         )

     ; insert lower-left corner's coordinates into list:
     (if (not (and (and (not open-on-left) (> stepLeft 0)) (eq? slope-lower -1)))
         (begin
          (set! points-i (cons (cons xp yp) points-i))
          (set! yLowerLimit yp)
          )
         )

     ; calculate upper-left corner:
     (if open-on-left
         (begin
          (set! xp (car X-ext))
          (set! yp (- y-l-upper d-upper))
          )
         (if (> stepLeft 0)
             (if (not (eq? slope-upper 1))
                 (begin
                  (set! jumps 0)
                  (while (<
                          (+ (- (* slope-upper h-thick) d-upper) (* jumps stepLeft))
                          (- stepLeft))
                    (set! jumps (+ jumps 1)))
                  (set! xtemp (/ (- d-upper (+ h-thick (* jumps stepLeft))) (- slope-upper 1)))
                  (if (< xtemp (- h-thick (/ stepLeft 2)))
                      (if (= -1 slope-upper)
                          (set! xtemp h-thick)
                          (set! xtemp
                                (/ (- (- (* stepLeft (+ 1 jumps)) d-upper) h-thick) (- (- 1) slope-upper)))
                          )
                      )
                  (set! xp (+ (- (car X-ext) h-thick) xtemp))
                  (set! yp (- (+ y-l-upper (* slope-upper xtemp)) d-upper))
                  )
                 )
             (begin
              (set! xp (car X-ext))
              (set! yp (- (+ y-l-upper (* thick slope-upper)) d-upper))
              )
             )
         )

     (if (not
          (and (and (not open-on-left) (> stepLeft 0)) (eq? slope-upper 1))
          )
         (set! yUpperLimit yp))


     ; left (inner) zigzag:
     (if (and (> stepLeft 0) (not open-on-left))
         (begin
          (let loop ((cnt y-l-lower))
            (if (< cnt y-l-upper)
                (begin
                 (if (and (> cnt yLowerLimit) (< cnt yUpperLimit))
                     (set! points-i (cons (cons    (car X-ext)             cnt                 ) points-i))
                     )
                 (if (and (> (+ cnt (/ stepLeft 2)) yLowerLimit) (< (+ cnt (/ stepLeft 2)) yUpperLimit))
                     (set! points-i (cons (cons (- (car X-ext) l-width) (+ cnt (/ stepLeft 2)) ) points-i))
                     )
                 (loop (+ cnt stepLeft))
                 )
                )
            )
          )
         )

     ; insert upper-left corner (yes, AFTER the zigzag points, so all the points will be given in clockwise order):
     (if (not
          (and (and (not open-on-left) (> stepLeft 0)) (eq? slope-upper 1))
          )
         (set! points-i (cons (cons xp yp) points-i)))

     ; calculate upper-right corner:

     (set! yLowerLimit y-r-lower)
     (set! yUpperLimit y-r-upper)

     (if open-on-right
         (begin
          (set! xp (cdr X-ext))
          (set! yp (- y-r-upper d-upper))
          )
         (if (> stepRight 0)
             (if (not (eq? slope-upper -1))
                 (begin
                  (set! jumps 0)
                  (while (<
                          (+ (- (* slope-upper (- h-thick)) d-upper) (* jumps stepRight))
                          (- stepRight))
                    (set! jumps (+ jumps 1)))
                  (set! xtemp (/ (- d-upper (+ h-thick (* jumps stepRight))) (+ slope-upper 1)))
                  (if (> xtemp (- (/ stepRight 2) h-thick  ))
                      (if (= 1 slope-upper)
                          (set! xtemp (- h-thick))
                          (set! xtemp
                                (/ (- (- (* stepRight (+ 1 jumps)) d-upper) h-thick) (- 1 slope-upper)))
                          )
                      )
                  (set! xp (+ (+ (cdr X-ext) h-thick) xtemp))
                  (set! yp (- (+ y-r-upper (* slope-upper xtemp)) d-upper))
                  )
                 )
             (begin
              (set! xp (cdr X-ext))
              (set! yp (- (- y-r-upper (* thick slope-upper)) d-upper))
              )
             )
         )

     ; insert upper-right corner:
     (if (not
          (and (and (not open-on-right) (> stepRight 0)) (eq? slope-upper -1)))
         (begin
          (set! points-i (cons (cons xp yp) points-i))
          (set! yUpperLimit yp)))

     ; calculate lower-right corner:
     (if open-on-right
         (begin
          (set! xp (cdr X-ext))
          (set! yp (+ y-r-lower d-lower))
          )
         (if (> stepRight 0)
             (if (not (eq? slope-lower 1))
                 (begin
                  (set! jumps 0)
                  (while (> (- (- d-lower (* slope-lower h-thick)) (* jumps stepRight)) stepRight)
                    (set! jumps (+ 1 jumps)))
                  (set! xtemp (/ (- (+ h-thick (* jumps stepRight)) d-lower) (- slope-lower 1)))
                  (if (> xtemp (- (/ stepRight 2) h-thick)   )
                      (if (= -1 slope-lower)
                          (set! xtemp (- h-thick))
                          (set! xtemp
                                (/ (+ (- d-lower (* stepRight (+ 1 jumps))) h-thick) (- -1 slope-lower)))))
                  (set! xp (+ (+ (cdr X-ext) h-thick) xtemp))
                  (set! yp (+ (+ y-r-lower (* slope-lower xtemp)) d-lower))
                  )
                 )
             (begin
              (set! xp (cdr X-ext))
              (set! yp (+ (- y-r-lower (* thick slope-lower)) d-lower))
              )
             )
         )

     (if (not (and (and (not open-on-right) (> stepRight 0)) (eq? slope-lower 1)))
         (set! yLowerLimit yp))

     ; right zigzag:
     (if (and (> stepRight 0) (not open-on-right))
         (begin
          (let loop ((cnt y-r-upper))
            (if (> cnt y-r-lower)
                (begin
                 (if (and (> cnt yLowerLimit) (< cnt yUpperLimit))
                     (set! points-i (cons (cons    (cdr X-ext)             cnt                  ) points-i)))
                 (if (and (> (- cnt (/ stepRight 2)) yLowerLimit) (< (- cnt (/ stepRight 2)) yUpperLimit))
                     (set! points-i (cons (cons (+ (cdr X-ext) r-width) (- cnt (/ stepRight 2)) ) points-i)))
                 (loop (- cnt stepRight))
                 )
                )
            )
          )
         )

     ; insert lower-right corner:
     (if (not (and (and (not open-on-right) (> stepRight 0)) (eq? slope-lower 1)))
         (set! points-i (cons (cons xp yp) points-i)))

     (ly:stencil-add
      ; draw outer polygon:
      (if (color? frame-color)  ; only add stencil if set to a valid color (could also be set to ##f)
          (ly:make-stencil (list 'color frame-color
                             (ly:stencil-expr (ly:round-filled-polygon points radius))
                             X-ext Y-ext))
          empty-stencil)
      ; draw inner polygon:
      (if (color? fill-color)   ; only add stencil if set to a valid color (could also be set to ##f)
          (ly:make-stencil (list 'color fill-color
                             (ly:stencil-expr (ly:round-filled-polygon points-i radius))
                             X-ext Y-ext))
          empty-stencil)
      )
     )
   )


genericSpan =
#(define-music-function (parser location y-l-lower y-l-upper y-r-lower y-r-upper frame-color fill-color stepLeft stepRight open-on-bottom open-on-top)
   (number? number? number? number? scheme? scheme? number? number? boolean? boolean?)
   ; Calling this procedure IMMEDIATELY before \startGroup will replace the stencil of HorizontalBracket.
   ; Some parameters are taken out of HorizontalBracket's properties
   #{
     \once\override HorizontalBracket.stencil =
     $(lambda (grob)
        (let* (
                (area (ly:horizontal-bracket::print grob))
                (thick (ly:grob-property grob 'line-thickness 1))
                (pad (ly:grob-property grob 'broken-bound-padding 0))
                (radius (ly:grob-property grob 'hair-thickness 0))
                (X-ext-param (ly:stencil-extent area X))
                (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
                (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
                )
          (makeDeltaSpan  y-l-lower y-l-upper y-r-lower y-r-upper frame-color fill-color stepLeft stepRight open-on-bottom open-on-top
            thick pad X-ext-param open-on-left open-on-right radius)
          ))
     \once\override HorizontalBracket.Y-offset = #0
   #})

roundedRectangleSpan =
#(define-music-function (parser location y-lower y-upper frame-color fill-color radius)
   (number? number? scheme? scheme? number?)
   #{
     \once\override HorizontalBracket.stencil =
     $(lambda (grob)
        (let* (
                (area (ly:horizontal-bracket::print grob))
                (thick (ly:grob-property grob 'line-thickness 1))
                (pad (ly:grob-property grob 'broken-bound-padding 0))
                (X-ext (ly:stencil-extent area X))
                (X-ext (cons (- (car X-ext) thick) (+ (cdr X-ext)  thick)))
                (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
                (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
                (X-ext (cons
                        (if open-on-left  (+ (car X-ext) pad) (car X-ext))
                        (if open-on-right (- (cdr X-ext) pad) (cdr X-ext))))
                (Y-ext (cons y-lower y-upper))
                (outer-rect empty-stencil)
                )
          ; calculate outer borders:
          (set! outer-rect
                (if (color? frame-color)
                    (ly:make-stencil (list 'color frame-color
                                       (ly:stencil-expr (ly:round-filled-box X-ext Y-ext radius))
                                       X-ext Y-ext))
                    empty-stencil)
                )
          ; shrink X-ext for use with inner stuff:
          (set! X-ext (cons (+ (car X-ext) thick) (cdr X-ext)))
          (set! X-ext (cons (car X-ext) (- (cdr X-ext) thick)))
          ; shrink Y-ext for use with inner stuff:
          (set! Y-ext (cons (+ (car Y-ext) thick) (cdr Y-ext)))
          (set! Y-ext (cons (car Y-ext) (- (cdr Y-ext) thick)))
          ;(ly:grob-set-property! grob 'layer -10)
          (ly:stencil-add
           outer-rect
           ; draw (inner) fill-rectangle
           (if (color? fill-color)
               (ly:make-stencil (list 'color fill-color
                                  (ly:stencil-expr (ly:round-filled-box X-ext Y-ext (- radius thick)))
                                  X-ext Y-ext))
               empty-stencil)
           )
          ))
     \once\override HorizontalBracket.Y-offset = #0
     %\once\override HorizontalBracket.shorten-pair = #'(-0.6 . -0.6)
   #})

tornSpan = #(define-music-function (parser location y-lower y-upper frame-color fill-color stepLeft stepRight)
              (number? number? scheme? scheme? number? number?)
              #{  \genericSpan $y-lower $y-upper $y-lower $y-upper $frame-color $fill-color $stepLeft $stepRight ##f ##f  #})


% Here are some functions with pre-defined zigzag edges at the left / right / at both sides.
% They read out the property HorizontalBracket.zigzag-width and automatically round it to the nearest sensible value

leftZZSpan =
#(define-music-function (parser location y-lower y-upper frame-color fill-color)
   (number? number? scheme? scheme?)
   #{
     \once\override HorizontalBracket.stencil =
     $(lambda (grob)
        (let* ((area (ly:horizontal-bracket::print grob))
               (thick (ly:grob-property grob 'line-thickness 1))
               (pad (ly:grob-property grob 'broken-bound-padding 0))
               (radius (ly:grob-property grob 'hair-thickness 0))
               (X-ext-param (ly:stencil-extent area X))
               (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
               (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
               (stepLeft (ly:grob-property grob 'zigzag-width 1.5))
               (dist-y (- y-upper y-lower))
               (cnt 1)
               )
          (if (not (= stepLeft 0))
              (begin
               (set! cnt (round (/ dist-y stepLeft)))  ; calculate number of zigzags, round to nearest integer
               (if (> cnt 0)
                   (set! stepLeft (/ dist-y cnt))       ; calculate exact zigzag size
                   (set! stepLeft 0))))
          (makeDeltaSpan  y-lower y-upper (+ 0 y-lower) (+ 0 y-upper) frame-color fill-color stepLeft 0 #f #f
            thick pad X-ext-param open-on-left open-on-right radius)))
     \once\override HorizontalBracket.Y-offset = #0
   #})

rightZZSpan =
#(define-music-function (parser location y-lower y-upper frame-color fill-color)
   (number? number? scheme? scheme?)
   #{
     \once\override HorizontalBracket.stencil =
     $(lambda (grob)
        (let* ((area (ly:horizontal-bracket::print grob))
               (thick (ly:grob-property grob 'line-thickness 1))
               (pad (ly:grob-property grob 'broken-bound-padding 0))
               (radius (ly:grob-property grob 'hair-thickness 0))
               (X-ext-param (ly:stencil-extent area X))
               (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
               (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
               (stepRight (ly:grob-property grob 'zigzag-width 1.5))
               (dist-y (- y-upper y-lower))
               (cnt 1)
               )
          (if (not (= stepRight 0))
              (begin
               (set! cnt (round (/ dist-y stepRight)))
               (if (> cnt 0)
                   (set! stepRight (/ dist-y cnt))
                   (set! stepRight 0))))
          (makeDeltaSpan  y-lower y-upper (+ 0 y-lower) (+ 0 y-upper) frame-color fill-color 0 stepRight #f #f
            thick pad X-ext-param open-on-left open-on-right radius)))
     \once\override HorizontalBracket.Y-offset = #0
   #})

ZZSpan =
#(define-music-function (parser location y-lower y-upper frame-color fill-color)
   (number? number? scheme? scheme?)
   #{
     \once\override HorizontalBracket.stencil =
     $(lambda (grob)
        (let* ((area (ly:horizontal-bracket::print grob))
               (thick (ly:grob-property grob 'line-thickness 1))
               (pad (ly:grob-property grob 'broken-bound-padding 0))
               (radius (ly:grob-property grob 'hair-thickness 0))
               (X-ext-param (ly:stencil-extent area X))
               (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
               (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
               (stepLeft (ly:grob-property grob 'zigzag-width 1.5))
               (stepRight (ly:grob-property grob 'zigzag-width 1.5))
               (dist-y (- y-upper y-lower))
               (cnt 1)
               )
          (if (not (= stepLeft 0))
              (begin
               (set! cnt (round (/ dist-y stepLeft)))
               (if (> cnt 0)
                   (set! stepLeft (/ dist-y cnt))
                   (set! stepLeft 0))))
          (if (not (= stepRight 0))
              (begin
               (set! cnt (round (/ dist-y stepRight)))
               (if (> cnt 0)
                   (set! stepRight (/ dist-y cnt))
                   (set! stepRight 0))))
          (makeDeltaSpan  y-lower y-upper (+ 0 y-lower) (+ 0 y-upper) frame-color fill-color stepLeft stepRight #f #f
            thick pad X-ext-param open-on-left open-on-right radius)))
     \once\override HorizontalBracket.Y-offset = #0
   #})

tornDYSpan = #(define-music-function (parser location y-l-lower y-l-upper y-r-lower y-r-upper frame-color fill-color stepLeft stepRight)
                (number? number? number? number? scheme? scheme? number? number?)
                #{  \genericSpan $y-l-lower $y-l-upper $y-r-lower $y-r-upper $frame-color $fill-color $stepLeft $stepRight ##f ##f  #})

DYSpan = #(define-music-function (parser location y-l-lower y-l-upper y-r-lower y-r-upper frame-color fill-color)
            (number? number? number? number? scheme? scheme?)
            #{  \genericSpan $y-l-lower $y-l-upper $y-r-lower $y-r-upper $frame-color $fill-color #0 #0 ##f ##f  #})

colorSpan = #(define-music-function (parser location y-lower y-upper fill-color)
               (number? number? scheme?)
               #{  \genericSpan $y-lower $y-upper $y-lower $y-upper ##f $fill-color #0 #0 ##f ##f  #})

framedSpan = #(define-music-function (parser location y-lower y-upper frame-color fill-color)
                (number? number? scheme? scheme?)
                #{  \genericSpan $y-lower $y-upper $y-lower $y-upper $frame-color $fill-color #0 #0 ##f ##f  #})

roundRectSpan = #(define-music-function (parser location y-lower y-upper frame-color fill-color radius)
                   (number? number? scheme? scheme? number?)
                   #{  \roundedRectangleSpan $y-lower $y-upper $frame-color $fill-color $radius  #})


\layout {
  \override HorizontalBracket.layer = #-10
  \override HorizontalBracket.shorten-pair = #'(-0.3 . -0.3)
  % "Abuse" properties that are not used by HorizontalBracket:
  \override HorizontalBracket.line-thickness = #0.3
  \override HorizontalBracket.broken-bound-padding = #-4
  \override HorizontalBracket.hair-thickness = #0
  \override HorizontalBracket.zigzag-width = #1.5
  \context {
    \Voice
    \consists "Horizontal_bracket_engraver"
  }
}

#(define-markup-command (on-color layout props color arg) (color? markup?)
   (let* ((stencil (interpret-markup layout props arg))
          (X-ext (ly:stencil-extent stencil X))
          (Y-ext (ly:stencil-extent stencil Y)))
     (ly:stencil-add (ly:make-stencil
                      (list 'color color
                        (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
                        X-ext Y-ext)) stencil)))

#(define-markup-command (sticker layout props frame-color fill-color arg) (color? color? markup?)
   (let* ((stencil (interpret-markup layout props arg))
          (X-ext (ly:stencil-extent stencil X))
          (Y-ext (ly:stencil-extent stencil Y))
          (cnt 0)
          (step 0)
          (dist-y (- (cdr Y-ext) (car Y-ext))))
     (set! cnt (round (/ dist-y 0.7)))
     (if (> cnt 0)
         (set! step (/ dist-y cnt))
         (set! step 0))
     (ly:stencil-add
      (makeDeltaSpan
       (car Y-ext) (cdr Y-ext) (car Y-ext) (cdr Y-ext) frame-color fill-color
       step step #f #f 0.1 ; thick
       0 X-ext #f #f 0)
      stencil)))

% -----------------------------------------------------------------------
%  End of include file "ColorSpanDef.ily"
% -----------------------------------------------------------------------

% \version "2.18.2"

\paper {
  indent = 0
  ragged-right = ##f
  page-count = 1
}

\markup \fill-line {\bold \huge "ColorSpan showcase"}

% \score {
%   \relative c' {
%     \override HorizontalBracket.line-thickness = #0.4
%     \genericSpan #-5 #-1 #-3 #1 \colDarkRed \colLightRed #0 #0 ##f ##f
%     c8 \startGroup e g \stopGroup r8
%     \override HorizontalBracket.line-thickness = #0.4
%     \genericSpan #-3 #1 #-5 #-1 \colDarkRed \colLightRed #0 #0 ##f ##f
%     g8 \startGroup e c \stopGroup r8
%     \override HorizontalBracket.line-thickness = #0.4
%     \genericSpan #-4 #4 #-4 #4 \colDarkBlue \colLightBlue #0 #0 ##f ##f
%     c8 \startGroup e g c g e c4 \stopGroup
%     \override HorizontalBracket.line-thickness = #0.4
%     \genericSpan #-4 #4 #-4 #4 \colDarkBlue \colLightBlue #0 #2 ##f ##f
%     c8 \startGroup e g c g e \stopGroup r4
%   }
% }

%\markup \vspace #1
\markup "Ingredients: two polygons"

% \score {
%   \relative c' {
%     \override HorizontalBracket.line-thickness = #0.8
%     \genericSpan #-4 #4 #-4 #4 \colDarkBlue ##f #0 #2 ##f ##f
%     c8 ^"outer polygon only:"
%     \startGroup e g c g e \stopGroup r4
%     \genericSpan #-4 #4 #-4 #4 \colDarkBlue \colLightBlue #0 #2 ##f ##f
%     c8 ^"outer and inner polygon:"
%     \startGroup e g c g e \stopGroup r4
%     \genericSpan #-4 #4 #-4 #4 ##f \colLightBlue #0 #2 ##f ##f
%     c8 ^"inner polygon only:"
%     \startGroup e g c g e \stopGroup r4
%   }
% }

\markup \vspace #1
\markup "Lower and upper border are passed as parameters (zero = middle line):"

% \score {
%   \relative c' {
%     \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
%     \override TextScript.staff-padding = #7
%     \genericSpan #-4 #0 #-4 #0 \colDarkRed \colLightRed #0 #0 ##f ##f
%     c8 ^\markup { \override #'(baseline-skip . 2) \left-column { " "  "y-upper: #0"  "y-lower: #-4"}}
%     \startGroup e g c g e \stopGroup r4
%     \genericSpan #-2 #2 #-2 #2 \colDarkRed \colLightRed #0 #0 ##f ##f
%     c8 ^\markup { \override #'(baseline-skip . 2) \left-column {" "  "#2"  "#-2"}}
%     \startGroup e g c g e \stopGroup r4
%     \genericSpan #-5 #-1 #-0.5 #3.5 \colDarkRed \colLightRed #0 #0 ##f ##f
%     c16 ^\markup { \override #'(baseline-skip . 2) \left-column {"left:"  "#-1"  "#-5"}}
%     \startGroup
%     \once \override TextScript.staff-padding = #4
%     d
%     _"Left and right edge can have their own Y-extent"
%     e f ^\markup { \override #'(baseline-skip . 2) \left-column {"right:"  "#3.5"  "#-0.5"}}
%     g a b c d4 \stopGroup r4
%     r16
%     \genericSpan #-1 #2 #-4 #2 \colDarkRed \colLightRed #0 #0 ##f ##f
%     c ^\markup { \override #'(baseline-skip . 2) \left-column {"left:"  "#2"  "#-1"}}
%     \startGroup b c a c g c f, ^\markup { \override #'(baseline-skip . 2) \left-column {"right:"  "#2"  "#-4"}}
%     c' e, c' \stopGroup r4

%   }
% }

\markup \vspace #1
%\markup "Parameters for left and right edge: straight or zigzag style"

\score {
  <<
    \new Staff {
      \relative c' {
        \override TextScript.staff-padding = #5
        \genericSpan #-4 #4 #-4 #4 \colDarkGreen \colLightGreen #2 #0 ##f ##f
        c8
        ^\markup {
          \override #'(baseline-skip . 2) \left-column {
            "stepLeft:" "#2"
          }
        }
        ^"\"Zigzag\" parameters:"
        \startGroup e g c g
        ^\markup {
          \override #'(baseline-skip . 2) \center-column {
            "stepRight:    " "#0    "
          }
        }
        e \stopGroup r4
        \genericSpan #-4 #4 #-4 #4 \colDarkViolet \colLightViolet #2 #0 ##f ##f
        c8 \startGroup e ^\markup {
          \override #'(baseline-skip . 2) \left-column {
            "hair-thickness:" "#0"
          }
        }
        ^"property:"
        g c g e \stopGroup r4
        \genericSpan #-4 #4 #-4 #4 \colDarkPurple \colLightPurple #2 #0 ##f ##f
        c8
        ^\markup {
          \override #'(baseline-skip . 2) \left-column {
            "shorten-pair:" "#'(-0.3 . -0.3) [default]"
          }
        }

        ^"property:" \startGroup e g c g e \stopGroup r4
        r2 ^\markup {
          \override #'(baseline-skip . 2) \left-column {
            "broken-bound-padding:" "#0"
          }
        }
        ^"property:"
        \once \override HorizontalBracket.broken-bound-padding = #0
        \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #2 #0 ##f ##f
        c8 \startGroup e g c
        g8 e \stopGroup r4 r2
        \override TextScript.staff-padding = #3
        \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #0 ##t ##f
        c8 ^"open-on-bottom: ##t"
        \startGroup e g c g e \stopGroup r4
        \genericSpan #-6 #4 #-6 #4 \colDarkRed \colLightRed #0 #0 ##t ##f
        c8 ^"Make boxes overlap..." \startGroup e g c g e \stopGroup r4
        \genericSpan #-6 #4 #-6 #4 \colDarkOrange \colLightOrange #0 #0 ##t ##f
        c8 ^"...and choose same color:" \startGroup e g c g e \stopGroup r4
      }
    }
    \new Staff {
      \relative c' {
        \override TextScript.staff-padding = #2
        \genericSpan #-4 #4 #-4 #4 \colDarkGreen \colLightGreen #0 #1 ##f ##f
        c8 ^"#0" \startGroup e g c g e^"#1" \stopGroup r4
        \genericSpan #-4 #4 #-4 #4 \colDarkViolet \colLightViolet #2 #0 ##f ##f
        \once \override HorizontalBracket.hair-thickness = #0.5
        c8 \startGroup e ^"#0.5" g c g e \stopGroup r4
        \genericSpan #-4 #4 #-4 #4 \colDarkPurple \colLightPurple #2 #0 ##f ##f
        \once \override HorizontalBracket.shorten-pair = #'(0 . 1)
        c8 ^"#'(0 . 1)" \startGroup e g c g e \stopGroup r4
        r2 ^"#-4 [default]"
        \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #2 #0 ##f ##f
        c8 \startGroup e g c
        g8 e \stopGroup r4 r2
        \genericSpan #-4 #4 #-4 #4 \colDarkOrange \colLightOrange #0 #0 ##t ##t
        c8 ^\markup {"open-on-bottom: ##t" \italic "and" "open-on-top: ##t"}
        \startGroup e g c g e \stopGroup r4
        \genericSpan #-6 #6 #-6 #6 \colDarkOrange \colLightOrange #0 #0 ##t ##t
        c8 \startGroup e g c g e \stopGroup r4
        \genericSpan #-6 #6 #-6 #6 \colDarkOrange \colLightOrange #0 #0 ##t ##t
        c8 \startGroup e g c g e \stopGroup r4
      }
    }
    \new Staff {
      \relative c' {
        \override TextScript.staff-padding = #2
        \genericSpan #-4 #4 #-4 #4 \colDarkGreen \colLightGreen #4 #3 ##f ##f
        c8 ^"#4"
        _\markup {
          \tiny
          \override #'(baseline-skip . 1.5) \left-column {
            "To avoid strange results," "stepLeft and stepRight" "should be a divisor of" "yUpper - yLower !"
          }
        }
        \startGroup e g c g e^"#3" \stopGroup r4
        \genericSpan #-4 #4 #-4 #4 \colDarkViolet \colLightViolet #2 #0 ##f ##f
        \once \override HorizontalBracket.hair-thickness = #1
        c8 \startGroup e ^"#1" g c g e \stopGroup r4
        \genericSpan #-4 #4 #-4 #4 \colDarkPurple \colLightPurple #2 #0 ##f ##f
        \once \override HorizontalBracket.shorten-pair = #'(-4 . -1)
        c8 ^"#'(-4 . -1)" \startGroup e g c g e \stopGroup r4
        r2 ^"#-8"
        \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #2 #0 ##f ##f
        \once \override HorizontalBracket.broken-bound-padding = #-8
        c8 \startGroup e g c
        g8 e \stopGroup r4 r2
        \genericSpan #-4 #4 #-4 #4 \colDarkYellow \colLightYellow #0 #0 ##f ##t
        c8 ^"open-on-top: ##t" \startGroup e g c g e \stopGroup r4
        \genericSpan #-4 #7 #-4 #7 \colDarkYellow \colLightYellow #0 #0 ##f ##t
        c8 \startGroup e g c g e \stopGroup r4
        \genericSpan #-4 #7 #-4 #7 \colDarkOrange \colLightOrange #0 #0 ##f ##t
        c8 _"to fake cross-staff boxes" \startGroup e g c g e \stopGroup r4
      }
    }

  >>
}

\markup \vspace #1
\markup "Property: line-thickness"

% \score {
%   \relative c' {
%     \override HorizontalBracket.line-thickness = #0.0
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #0.1
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.1" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #0.2
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.2" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #0.3
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.3" \startGroup e g c g e \stopGroup r4
%     \break
%     \override HorizontalBracket.line-thickness = #0.4
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.4" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #0.5
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.5" \startGroup e g c g e \stopGroup r4

%     \override HorizontalBracket.line-thickness = #0.6
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.6" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #0.7
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.7" \startGroup e g c g e \stopGroup r4
%     \break
%     \override HorizontalBracket.line-thickness = #0.8
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#0.8" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #1.0
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#1.0" \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #1.5
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#1.5"
%     _\markup {\tiny \override #'(baseline-skip . 1.5)  \column {"Update: Values above stepLeft of stepRight" "now also will lead to sensible results."}}
%     \startGroup e g c g e \stopGroup r4
%     \override HorizontalBracket.line-thickness = #2.0
%     \genericSpan #-4 #4 #-4 #4 \colDarkRed \colLightRed #0 #2 ##f ##f
%     c8 ^"#2.0" \startGroup e g c g e \stopGroup r4

%   }
% }

\markup {
  \override #'(baseline-skip . 2)
  \column {
    \wordwrap {
      When line-thickness increases, the colored box will increase its X-extent to have the first and last note
      inside the box. However, it will NOT increase its Y-extent, because this is a value explicitly passed as a parameter.
    }
    \vspace #0.1
    \wordwrap {Is this reasonable/usable? What do you think?}
  }
}

\pageBreak
\markup \vspace #1
\markup "Some more tricks:"

\score {
  \relative c' {
    \override HorizontalBracket.line-thickness = #0.3
    \genericSpan #-4.5 #3.5 #-4.5 #3.5 \colDarkRed #white #0 #2 ##f ##f
    e8 ^\markup {
          \override #'(baseline-skip . 2) \left-column {
            "\"empty\" box: use" "#white as inner color"
          }
        } \startGroup g c e c g \stopGroup r4
    \genericSpan #-4.5 #3.5 #-4.5 #3.5 \colDarkRed \colLightRed #0 #2 ##f ##f
    c,16 \startGroup
    \once \override HorizontalBracket.line-thickness = #0.1
    \genericSpan #-4 #-1 #-4 #-1 \colDarkRed #white #0 #0 ##f ##f
    c32 ^"Boxes can be \"stacked\""
    \startGroup d \stopGroup
    e16
    \once \override HorizontalBracket.line-thickness = #0.1
    \once \override HorizontalBracket.layer = #-9
    \genericSpan #-3 #0 #-3 #0 \colDarkRed #white #0 #0 ##f ##f
    e32 \startGroup f \stopGroup g8 c g e8 \stopGroup r4
    \override HorizontalBracket.layer = #-9
    \genericSpan #-4.5 #3.5 #-4.5 #3.5 \colDarkRed \colLightRed #0 #2 ##f ##f
    c16 \startGroup
    \once \override HorizontalBracket.line-thickness = #0
    \genericSpan #-2.6 #-2.5 #-2.6 #-2.5 \colDarkRed #white #0 #0 ##f ##f
    \override HorizontalBracket.hair-thickness = #2
    \override HorizontalBracket.shorten-pair = #'(1.7 . 1.7)
    \once \override HorizontalBracket.layer = #-9
    c32 \startGroup d \stopGroup
    e16
    \once \override HorizontalBracket.line-thickness = #0
    \once \override HorizontalBracket.layer = #-9
    \genericSpan #-1.6 #-1.5 #-1.6 #-1.5 \colDarkRed #white #0 #0 ##f ##f
    e32 \startGroup f \stopGroup g8 c g e8 \stopGroup r4

  }
}

\markup \vspace #1

\score {
  \relative c'{
    r4^\markup { \rotate #10 \sticker \colDarkGreen \colLightGreen \pad-markup #0.4 "Adhesive tape..." }
    r r r^\markup { "... a useless" \sticker \colDarkYellow \colLightYellow \pad-markup #0.4 "side product" "for markups" }
    r
    r r r
    r r r r^\markup { \rotate #-97 \sticker \colDarkOrange \colLightOrange \pad-markup #0.4 ":-)" }

  }
}

\layout {
  \override TextScript.staff-padding = #3
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
