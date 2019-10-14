\version "2.19.82"

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
                (radius (ly:grob-property grob 'hair-thickness 5))
                (X-ext-param '(-2 . 3))
                (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
                (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
                (color #(rgb-color 0.5 0.5 0.5))
                )
          (makeDeltaSpan  y-l-lower y-l-upper y-r-lower y-r-upper frame-color fill-color stepLeft stepRight open-on-bottom open-on-top
            thick pad X-ext-param open-on-left open-on-right 5)
          ))
     \once\override HorizontalBracket.Y-offset = #0
   #})




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

#(define clb-stil
   (make-path-stencil
    '(
      moveto 0 1.6
      lineto 0.2 1.6
      lineto 0.2 0
      lineto 0 0
      closepath
      moveto 0.7 1.3
      lineto 0.9 1.3
      lineto 0.9 0.3
      lineto 0.7 0.3
      closepath
      moveto 1.4 1.1
      lineto 1.6 1.1
      lineto 1.6 0.5
      lineto 1.4 0.5
      closepath
      moveto 2.1 0.9
      lineto 2.3 0.9
      lineto 2.3 0.7
      lineto 2.1 0.7
      closepath
     )

    .01 1 1 #t))

#(set! default-script-alist
   (append! default-script-alist
     (list
      `("clb"
         . (
             (stencil . ,clb-stil)
             (toward-stem-shift-in-column . 0.0)
             (padding . 1)
             (X-offset . 0.8)
             (avoid-slur . around)
             (direction . ,UP)))
      )))


clb = #(make-articulation "clb")

\paper {
    tagline = ##f
}

oneBeam = {
  \once \set stemRightBeamCount = #1
  \once \set stemLeftBeamCount = #1
}

pizzBeam = {
  \once \set stemRightBeamCount = #1
  \once \set stemLeftBeamCount = #0
}

hideRest = {
  \once \set stemLeftBeamCount = #1
  \once \omit Rest
}

syncSpan =
#(define-music-function (parser location y-lower y-upper x-extent)
   (number? number? pair?)
   ; Calling this procedure IMMEDIATELY before \startGroup will replace the stencil of HorizontalBracket.
   ; Some parameters are taken out of HorizontalBracket's properties
   #{
     \once\override HorizontalBracket.stencil =
     $(lambda (grob)
        (let* (
                (area (ly:horizontal-bracket::print grob))
                (thick (ly:grob-property grob 'line-thickness 1))
                (pad (ly:grob-property grob 'broken-bound-padding 0))
                (radius (ly:grob-property grob 'hair-thickness 5))
                (open-on-left  (=  1 (ly:item-break-dir (ly:spanner-bound grob LEFT ))))
                (open-on-right (= -1 (ly:item-break-dir (ly:spanner-bound grob RIGHT))))
                (color #'(rgb-color 0.9 0.9 0.9))
                )
          (makeDeltaSpan  y-lower y-upper y-lower y-upper color color 0 0 #f #f
            thick pad x-extent open-on-left open-on-right 2)
          ))
     \once\override HorizontalBracket.Y-offset = #0
     #})

#(define niente
   (ly:stencil-add
     (make-circle-stencil 0.5 0.2 #f)
     (make-connected-path-stencil '((-0.6 -0.6) (0.6 0.6)) 0.2 1 1 #f #f)))

#(define (circ-tip radius thickness)
  (lambda (grob)
    (let* ((stencil (ly:hairpin::print grob))
           (grow-direction (ly:grob-property grob 'grow-direction))
           (len (interval-length (ly:stencil-extent stencil X)))
           (diameter (* 2 radius)))

      (set! stencil (ly:stencil-scale stencil (/ (- len diameter) len) 1))
      (set! stencil
        (ly:stencil-combine-at-edge
          stencil
          X (* -1 grow-direction)
          niente
          (- thickness)))
      (if (= 1 grow-direction)
          (set! stencil (ly:stencil-translate-axis stencil diameter X))) ;; is there a way around this?

      stencil)))

paren =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
         \normal-text \italic \fontsize #2 (
	 \pad-x #0.2 #(ly:music-property dyn 'text)
	 \normal-text \italic \fontsize #2 )
       }
    #}))
