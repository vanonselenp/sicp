#lang sicp

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define alpha (/ (- 1 (sqrt 5)) 2))
(define beta (/ (+ 1 (sqrt 5)) 2))

(define (check n)
  ( / (- (expt beta n) (expt alpha n)) (sqrt 5)))


(fib 11)
(check 11)

(fib 15)
(check 15)