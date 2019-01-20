#lang sicp

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(f 0)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)

#|
(f 3)
(+ (f 2) (* 2 (f 1)) (* 3 (f 0)))
(+ 2 2 0)

(f 5)
(+ (f 4) (* 2 (f 3)) (* 3 (f 2)))

|#   

(define (f-iter a b c count)
  (if (<= count 0)
      a
      (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))


(f-iter 0 1 2 0)
(f-iter 0 1 2 2)
(f-iter 0 1 2 3)
(f-iter 0 1 2 4)
(f-iter 0 1 2 5)
(f-iter 0 1 2 6)
(f-iter 0 1 2 7)



