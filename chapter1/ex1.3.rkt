#lang sicp

(define (square x) (* x x))

(define (sum-of-squares a b) (+ (square a) (square b)))

(define (sum-of-squares-larger a b c)
  (cond
    ((and (< a b) (< a c)) (sum-of-squares b c))
    ((and (< b a) (< b c)) (sum-of-squares a c))
    (else (sum-of-squares a b))))

(sum-of-squares-larger 2 3 4)