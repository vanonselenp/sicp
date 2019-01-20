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


(define (sqrt x)
  (sqrt-iter 1.0 x))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
  (/ (+ x y) 2))


(define (simple-sqrt x)
  (define (s-good-enough guess x)
    (< (abs (- (square guess) x)) 0.001))
  
  (define (s-improve guess x)
    (average guess (/ x guess)))

  (define (s-sqrt-iter guess x)
    (if (s-good-enough guess x)
        guess
        (s-sqrt-iter (s-improve guess x) x)))

  (s-sqrt-iter 1.0 x))


(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))


(define (factor n)
  (define (fact-iter product counter max-counter)
    (if (> counter max-counter)
        product
        (fact-iter (* counter product) (+ counter 1) max-counter)))

  (fact-iter 1 1 n))


(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))


(define (fib-iter n)
  (define (iter counter current next)
    (if (= counter n)
        current
        (iter (+ counter 1) next (+ current next))))

  (iter 0 0 1))


(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

;---------------------------

(count-change 100)

(fib 10)

(fib-iter 10)

(factor 6)

(factorial 6)

(simple-sqrt 16)
  
(inc 42)

(abs -1)

(* 5 size)
(* pi (* radius radius))

(square 4)
(sum-of-squares 3 4)
(f 5)

(sqrt 9)

; (and (> x 5) (< x 10))
