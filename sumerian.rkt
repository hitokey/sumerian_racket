#lang racket

(require 2htdp/image)

(define bsc (lambda (#:scale  [s 1] ;; look later
                     #:size-c [c 7]
                     #:angle  [r 0]
                     #:width  [l 0]
                     #:size-a [a 14]
                     #:size-b [b 14]
                     )
 (rotate r
  (overlay/align/offset "center" "top"
   (triangle/sss (* s a) (* s b) (* s c)
                 "solid" "black")
   0.5 7
   (line 0 (if (equal? l -1) 0 (* s (+ 18 l)))
         (pen "black" (if (< (round s) 256)
                          (round s) 255)
              "solid" "round" "round")))
  )))


;;;;; basics fig
(define box45
  (overlay/align/offset "center" "bottom"
   (beside
    (bsc #:width 12 #:angle -45)
    (bsc #:width 12 #:angle 45))
   0 24
   (beside
    (bsc #:width 14 #:angle 45)
    (bsc #:width 14 #:angle -45)) ))


(define box
  (underlay/align/offset
   "left" "bottom"
   (underlay/align/offset
    "left" "top"
    [bsc #:width 15 #:angle 90]
    4 5
    [bsc #:width 6])
   1 4
   (underlay/align/offset
    "right" "bottom"
    [bsc #:width 18]
    -4 0
    [bsc #:width 15 #:angle 90]
    )))

;;;;;---------------------------------------------------

(define an
  (underlay/align "center" "center"
     (bsc #:width 16)
     (bsc #:width 17 #:angle 45)
     (bsc #:width 18 #:angle 90)
     (bsc #:width 17 #:angle 135)
))

(define ki
  (overlay/align/offset "right" "center"
                        box45
                 -9 0
                 (above
                  (bsc #:width 6 #:angle 90 #:scale 0.8)
                  (bsc #:width 6 #:angle 90 #:scale 0.8)
                  (bsc #:width 6 #:angle 90 #:scale 0.8) )))

(define nanna
  (beside 
   (overlay/align/offset
    "center" "top"
    (overlay/align
     "right" "center"
     (bsc #:width 63 #:angle 90)
     (above/align "center"
                  (bsc #:width 10 #:angle 60 #:scale 0.6)
                  (bsc #:width 10 #:angle 120 #:scale 0.6)))
    0 -14
    (overlay/align
     "center" "bottom"
     (beside
      (bsc #:width 11 #:angle -45)
      (bsc #:width 11 #:angle 45))
     (beside
      (bsc #:width 10 #:angle -45 #:scale 0.7)
      (bsc #:width 10 #:angle 45 #:scale 0.7)))) ki))
                

(define ur
  (above
   (beside
    (bsc #:width 6)
    (bsc #:width 6)
    (bsc #:width 2 #:angle 90)
    (bsc #:width 6))
   (bsc #:width 48 #:angle 90)))

(define nammu
  (underlay/align
   "left" "bottom"
   (above/align "left"
                (bsc #:width 10 #:angle 90)
                (bsc #:width 8))
   (underlay/align/offset
    "right" "bottom"
    (bsc #:width 9 #:angle 90)
    9 0
    (overlay/align "center" "center"
                   (bsc #:width 8)
                   (bsc #:width 8 #:angle 45 #:scale 0.7)
                   (bsc #:width 8 #:angle 90 #:scale 0.7)
                   (bsc #:width 8 #:angle 135 #:scale 0.7)))  ))

(define urim
  (beside
   (overlay/align/offset
    "center" "top"
    (overlay/align
     "right" "center"
     (bsc #:width 63 #:angle 90)
     (above/align "center"
                  (bsc #:width 10 #:angle 60 #:scale 0.6)
                  (bsc #:width 10 #:angle 120 #:scale 0.6)))
    0 -14
     (beside
      (bsc #:width 11 #:angle -45)
      (bsc #:width 11 #:angle 45)))
   (beside
    (bsc #:width 8)
    (above
     (bsc #:angle 90 #:scale 0.8)
     (bsc #:angle 90 #:scale 0.8))
    (overlay/align/offset
     "left" "center"
     (bsc #:width 4 #:scale 0.8)
     4 -1
     (overlay/align/offset
      "right" "bottom"
     (overlay/align/offset
      "center" "center"
      (bsc #:width 10 #:angle 105)
      0 18
      (bsc #:width 9 #:angle 75))
     2 0
     (bsc #:width 10)) )) ))  

  
(define urdnammu
  (beside ur an nammu))

(define nin
  (beside
   (overlay/align/offset
    "center" "center"
    (overlay/align/offset
     "left" "top"
     (bsc #:width 10)
     7 0
     (bsc #:width 4 #:angle 60))
    3 6
    (overlay/align/offset
     "left" "top"
     (bsc #:width 4 #:angle 90)
     0 5
     (bsc #:width 4 #:angle 120)))
   (beside
    (bsc #:width 10)
    (above
     (bsc #:width 10 #:angle 90 #:scale 0.8)
     (bsc #:width 10 #:angle 90 #:scale 0.8)
     (bsc #:width 10 #:angle 90 #:scale 0.8))
    (bsc #:width 10)) ))
   
(define lugal
  (beside
   (beside
    (above
     (bsc #:width 10 #:angle 90 #:scale 0.8)
     (bsc #:width 10 #:angle 90 #:scale 0.8)
     (bsc #:width 10 #:angle 90 #:scale 0.8)
     (bsc #:width 10 #:angle 90 #:scale 0.8))
    (bsc #:width 10))
   (overlay/align/offset
    "center" "center"
    (underlay/align/offset
     "left" "center"
     (bsc #:width 10)
     -3 0
     (above/align
      "right"
      (bsc #:width 40 #:angle 65 #:scale 0.9)
      (bsc #:width 46 #:angle 100 #:scale 0.9)))
    -6 4
    (beside (bsc #:width 6 #:scale 0.8)
            (bsc #:width 5 #:scale 0.8)
            (bsc #:width 4 #:scale 0.8))) ))

(define é
  (overlay/align
   "center" "center"
   box
   (scale 0.7
          (overlay
           (beside
            (bsc #:width 8)
            (bsc #:width 8)
            (bsc #:width 8))
           (above
            (bsc #:width 14 #:angle 90)
            (bsc #:width 14 #:angle 90) ))) ))

(define dù
  (overlay/align "left" "center"
   (above/align "right"
                (bsc #:width 15 #:angle 55 #:scale 0.9)
                (bsc #:width 15 #:angle 100 #:scale 0.9))
   (bsc #:width 10)))

(define ni
  (overlay/align/offset
   "center" "center"
   (above/align "right"
                (bsc #:width 18 #:angle 60 )
                (bsc #:width 20 #:angle 110))
   -3 3
   (beside
    (bsc #:width 3 #:scale 0.8)
    (bsc #:width 3 #:scale 0.8) ) ))

(define a
  (beside
   (bsc #:width 18)
   (above
    (bsc #:width -8)
    (bsc #:width 5) ) ))

(define na
  (beside
   (bsc #:width 3 #:angle 90)
   ki))

(define ke4
  (overlay/align
   "center" "center"
   box
   (scale 0.7
          (overlay
           (beside
            [bsc #:width 8]
            [bsc #:width 8])
           (above
            [bsc #:width 14 #:angle 90]
            [bsc #:width 14 #:angle 90]) )) ))

(define ma
  (beside/align "top"
                (bsc #:width 3 #:angle 90)
                (overlay/align/offset
                 "center" "bottom"
                 (beside
                  (bsc #:width 5)
                  (bsc #:width 3 #:angle 90)
                  (bsc #:width 5))
                 -3 3
                 (bsc #:width 22 #:angle 90)) ))

(define mu
  (overlay/align/offset
   "right" "center"
   (overlay/offset
    (overlay/offset
     (bsc #:width 30 
          #:angle 90)
     -7 -6
     (beside (bsc #:width -10 #:angle 45 #:scale 0.7)
             (bsc #:width -10 #:angle 45 #:scale 0.7)))
    -7 10
   (beside (bsc #:width -10 #:angle 135 #:scale 0.7)
            (bsc #:width -10 #:angle 135 #:scale 0.7)))
   0 0
   (overlay/align/offset
    "center" "center"
    (bsc #:width -10 #:angle 135 #:scale 0.7)
    0 -10
    (bsc #:width -10 #:angle 45 #:scale 0.7))))

(define í
  (above
   (beside (bsc #:width 2)
           (bsc #:width 2)
           (bsc #:width 2))
   (beside (bsc #:width 2)
           (bsc #:width 2))))
(define i
  (beside
   (above (bsc #:width 2 #:angle 90)
          (bsc #:width 2 #:angle 90)
          (bsc #:width 2 #:angle 90))
   (above (bsc #:width 2 #:angle 90)
          (bsc #:width 2 #:angle 90))))


(define u [bsc #:width -1
               #:angle -90
               #:scale 1.8
               #:size-a 20
               #:size-b 20])


(define ú (overlay/align "right" "center"
           (beside (bsc #:width 2)
                   (bsc #:width 2)
                   (bsc #:width 2)
                   (bsc #:width 2))
           (above (bsc #:width 10 #:angle 90)
                  (bsc #:width 10 #:angle 90))))

(define ba
  (underlay/align/offset
   "right" "center"
   (overlay/align/offset
    "right" "bottom"
    (overlay/align/offset
     "center" "center"
     (bsc #:width 10 #:angle 115)
     0 18
     (bsc #:width 9 #:angle 65))
    2 0
    (bsc #:width 10))
   -2 0
   (bsc #:width 1 #:angle 90 #:scale 0.7)))


(define bá
  (overlay/align
   "center" "center"
   (above (bsc #:width 5 #:angle 90)
          (bsc #:width 5 #:angle 90))
   (bsc #:width 4)))

(define bà
  (overlay/align/offset
   "right" "center"
   box
   -3 0
   (scale 0.8
          (above (bsc #:width 5 #:angle 90)
                 (bsc #:width 5 #:angle 90)
                 (bsc #:width 5 #:angle 90)
                 (bsc #:width 5 #:angle 90)
                 (bsc #:width 5 #:angle 90)))))

(define be
  (overlay/align/offset "right" "center"
   (bsc #:width 4 #:angle 90)
   14 0
   (above (bsc #:angle 120 #:scale 0.6)
          (bsc #:angle 60 #:scale 0.6))))

(define bè
  (overlay/align "center" "bottom"
    (above/align "right"
                 (bsc #:width 15 #:angle 65 )
                 (bsc #:width 18 #:angle 110))
    (beside
     (bsc #:width 3 #:scale 0.8)
     (bsc #:width 3 #:scale 0.8))))


(define bu
  (beside
   (overlay/align/offset
    "right" "center"
    (overlay
     [bsc #:width 3 #:angle 45]
     [bsc #:width 3 #:angle 135])
    5 0
    (above
    [bsc #:width -1 #:angle 45]
    [bsc #:width -1 #:angle 135]))
   [bsc #:width 5 #:angle 90]))


(define bù
  (rotate 45
          (overlay
           (beside
            [bsc #:width 8]
            [bsc #:width 8])
           (above
            [bsc #:width 8 #:angle 90]
            [bsc #:width 8 #:angle 90]))))


(define inanna2
  (overlay
   (overlay/align "right" "center"
                  (overlay/align/offset "left" "center"
                                 [bsc #:width 28 #:angle 90]
                                 8 0
                                 [bsc #:width 5])
                  [bsc #:width 5])
   (overlay/align/offset
    "right" "bottom"
    [bsc #:width 5 #:angle 25]
    12 0
    [bsc #:width 4 #:angle -25 #:scale 0.8]
    )))


(define inanna
 (overlay/align/offset "right" "center"
  (beside
   (overlay/align/offset "left" "center"
                        [bsc #:width 20 #:angle 90]
                        14 0
                        [bsc #:width 5 #:angle -15])
   [bsc #:width 5])
  -5 0
  (overlay/align/offset
    "right" "bottom"
    [bsc #:width 5 #:angle 15]
    10 0
    [bsc #:width 0 #:angle -25 #:scale 0.7]
    )))

(define in
  (beside
   (beside
    (above [bsc #:width -1 #:angle -90]
           [bsc #:width -1 #:angle -90]
           [bsc #:width -1 #:angle -90])
    (above [bsc #:width -1 #:angle -90]
           [bsc #:width -1 #:angle -90]
           [bsc #:width -1 #:angle -90])
    (above [bsc #:width -1 #:angle -90]
           [bsc #:width -1 #:angle -90]
           [bsc #:width -1 #:angle -90]))
   (scale 0.8 bè)))

(define lá
  (overlay/align/offset "left" "top"
                [bsc #:width 5]
                 8 0
                [bsc #:width 5 #:angle 90]))


(define en
  (overlay/align/offset
    "center" "top"
    (overlay/align/offset
     "center" "center"
     (overlay/align/offset
      "left" "center"
      [bsc #:width 35 #:angle 90]
      12 0
     [bsc #:width 1 #:scale 0.8])
     8 8
     (beside
      [bsc #:width -6 #:angle 165 #:scale 0.7]
      [bsc #:width -6 #:angle 165 #:scale 0.7]
      [bsc #:width -6 #:angle 165 #:scale 0.7]
      [bsc #:width -6 #:angle 165 #:scale 0.7]
      [bsc #:width -6 #:angle 165 #:scale 0.7]))
    18 -15
    (overlay/align/offset
     "right" "center"
     (beside
      [bsc #:width 1]
      (scale 0.8
             (overlay/align/offset
              "center" "top"
              [bsc #:width 1 #:angle 90 #:scale 0.9]
              0 8
              (above/align "right"
                           [bsc #:scale 0.8 #:angle 90]
                           [bsc #:width -2 #:angle 90 #:scale 0.8]
                           [bsc #:width -3 #:angle 90 #:scale 0.8]
                           [bsc #:width -4 #:angle 90 #:scale 0.8]))) )
     4 0
     [bsc #:width 1])))



(define gi
  (overlay/align/offset
    "left" "center"
    [bsc #:width 7]
    4 0
    (overlay/align/offset
     "right" "bottom"
     (overlay/align/offset
      "center" "center"
      [bsc #:width 20 #:angle 90]
      -8 0
      [bsc #:width 7  #:angle 15])
      0 0
     (overlay/align/offset
      "center" "bottom"
      (beside
       [bsc #:width -4 #:angle 10 #:scale 0.7]
       [bsc #:width -4 #:angle 10 #:scale 0.7]
       [bsc #:width -4 #:angle 10 #:scale 0.7]
       [bsc #:width -4 #:angle 10 #:scale 0.7])
      0 16
      (beside
       [bsc #:width -4 #:angle 170 #:scale 0.7]
       [bsc #:width -4 #:angle 170 #:scale 0.7]
       [bsc #:width -4 #:angle 170 #:scale 0.7]
       [bsc #:width -4 #:angle 170 #:scale 0.7])))))

(define kiengi
  (beside ki en gi))


(define ga
  (beside
   [bsc #:width 8]
   (above [bsc #:width 1 #:angle 90]
          [bsc #:width 1 #:angle 90]
          [bsc #:width 1 #:angle 90]
          [bsc #:width 1 #:angle 90]
          [bsc #:width 1 #:angle 90])
   (overlay/align/offset
    "center" "center"
    dù -2 4
    (scale 0.7
           (beside
            [bsc #:width -8]
            [bsc #:width -8]
            [bsc #:width -8])))
   ))
                          
(define vocabulary
  '(("a" . a)
    ("an" . an)
    ("ba" . ba)
    ("bá" . bá)
    ("bà" . bà)
    ("be" . be)
    ("bè" . bè)
    ("bu" . bu)
    ("bù" . bù)
    ("dù" . dù)
    ("é" . é)
    ("ga" . ga)
    ("i" . i)
    ("in" . in)
    ("inanna" . inanna)
    ("inanna" . inanna2)
    ("ke4" . ke4)
    ("ki" . ki)
    ("kiengi" . kiengi)
    ("lá" . lá)
    ("lugal" . lugal)
    ("ma" . ma)
    ("mu" . mu)
    ("na" . na)
    ("nammu" . nammu)
    ("nanna" . nanna)
    ("ni" . ni)
    ("nin" . nin)
    ("u" . u)
    ("ú" . ú)
    ("ur" . ur)
    ("urdnammu" . urdnammu)
    ("urim" . urim)
    ))


(define (build xsl space sc)
  (let loop([xs xsl] [rst empty-image])
    (cond [(null? xs) (scale sc rst)]
          [(equal? (length xs) 1) (loop '() (beside rst (eval (car xs)) (empty-scene 10 0)) )]
          [(loop (cdr xs) (beside rst (eval (car xs)) (empty-scene space 0)))] )))
    
(define (config-string xs)
 (for/list ([x (string-split (string-downcase xs))] #:when (assoc x vocabulary))
   (cdr (assoc x vocabulary)) ))

(define transcribe
  (lambda (xsl [space 70] [file #f] [sc 1])
      (if file (begin
                 (save-image (if (string? xsl)
                                 (build (config-string xsl) space sc)
                                 (build xsl space sc))
                             (if (regexp-match ".png" file) file
                                 (string-append file ".png")))
                 #t)
          (if (string? xsl)
              (build (config-string xsl) space sc)
              (build xsl space sc)))
    ))


(define writing
  (lambda (w [file #f])
    (lambda (w . ws)
      (apply cons (list w ws)) w)
    (apply cons (transcribe (car w) (cadr w))) ))    

(define text1 (lambda (#:scale [s 1])
    (scale s (beside/align "center" (empty-scene 1 0)
                           (line 0 483 (pen "black" 3 "solid" "round" "round"))
                           (empty-scene 0 10)
                           (above (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                  (above/align "right"
                                               (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                               (empty-scene 0 5)
                                               (transcribe "an nanna" 80)
                                               (empty-scene 0 5)
                                               (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                               (empty-scene 0 5)
                                               (transcribe "nin an na" 40)
                                               (empty-scene 0 5)
                                               (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                               (empty-scene 0 5)
                                               (transcribe "nin a ni" 70)
                                               (empty-scene 0 5)
                                               (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                               (empty-scene 0 5)
                                               (transcribe "ur an nammu" 65)
                                               (empty-scene 0 5)
                                               (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                               (above/align "right"
                                                            (empty-scene 0 5)
                                                            (transcribe "lugal urim" 20)
                                                            (empty-scene 0 5)
                                                            (transcribe "ki ma é" 20)
                                                            (empty-scene 0 5))
                                               (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                               (empty-scene 0 5)
                                               (transcribe "é  a ni" 85)
                                               (empty-scene 0 5)
                                    (line 352 0 (pen "black" 3 "solid" "round" "round"))
                                    (empty-scene 0 5)
                                    (transcribe "mu na dù" 50)
                                    (empty-scene 0 5))
                                  (empty-scene 0 5)
                                  (line 352 0 (pen "black" 3 "solid" "round" "round")) )
                           (line 0 485 (pen "black" 3 "solid" "round" "round")) ) )))


;; (save-image (text1) "text1.png" (image-width (text1)) (image-height (text1)))
;; maior ou melhor

;; maior
#|
 (save-image (text1 #:scale 2) "text1.png"
  (image-width (text1 #:scale 2)) (image-height (text1 #:scale 2)))
|#

;;menor
#|
 (save-image (text1 #:scale 0.5) "text1.png"
  (image-width (text1 #:scale 0.5)) (image-height (text1 #:scale 2)))
|#
;;Dara