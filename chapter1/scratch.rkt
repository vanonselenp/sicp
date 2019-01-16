#lang sicp

(define size 2)
(define pi 3.14159)
(define radius 10)

(define circumference (* 2 pi radius))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (f a) (sum-of-squares (+ a 1) (* a 2)))

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(inc 42)

(abs -1)

(* 5 size)
(* pi (* radius radius))

(square 4)
(sum-of-squares 3 4)
(f 5)

; (and (> x 5) (< x 10))
