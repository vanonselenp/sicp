#lang sicp

(define (square x) (* x x))

(define (newton guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (newton guess x) x)))

(define (good-enough? guess x)
  (< (abs (- guess (newton guess x))) 0.0000000001))

(define (cube-root x)
  (cube-iter 1.0 x))

(define (cube x)
  (* x x x))

(cube-root 27)
(cube-root (cube 79))
(cube-root 1e60)
(cube-root 1e-30)
(cube-root -1000)
