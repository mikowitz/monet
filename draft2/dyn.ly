\version "2.19.82"
dynText = #(define-event-function (parser location dyn expr)
             (markup? markup?)
             (let* (
                     (mark #{ \markup { \dynamic $dyn \hspace #0.2 \normal-text \italic $expr } #})
                     (offset (lambda (grob)
                               (let* (
                                       (layout (ly:grob-layout grob))
                                       (props (ly:grob-alist-chain grob
                                                (ly:output-def-lookup layout
                                                  'text-font-defaults)))
                                       (target-X-extent
                                        (ly:stencil-extent

                                         (ly:text-interface::interpret-markup layout props dyn)
                                         X))
                                       (width (abs
                                               (- (cdr target-X-extent) (car target-X-extent))))
                                       )
                                 (display target-X-extent)
                                 (- 1 (/ width 2))
                                 )
                               )
                       )
                     )
               #{
                 \tweak DynamicText.X-offset #offset
                 #(make-dynamic-script mark)
               #}
               )
             )

{ c''1\dynText "p" "dolce" }

(ly:text-interface::interpret-markup '() '() "markup { small \"hello\" }")
