#lang sicp

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough-v2? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (average x y)
  (/ (+ x y) 2))

;improved guess mechanism, pointless double calc. Improves the functioning at high numbers

(define (good-enough-v2? guess x)
  (<= (abs (- guess (improve guess x))) 0.0000001))

;add a 0 and it gets suck. Most likely to too large a number?
(sqrt 1200000000000000000000000000)
(sqrt 9)

;this wont work because it is smaller than the guess factor
(sqrt 0.000000000000000000009)


#|

|#