#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

#|
Reasons:

Applicative would evaluate the (p) before calling test, thereby stuck in an infinte loop
Normal would expand first level and do just enough evaluation to exit the program. Do to evaluation being put off till it is needed.
|#