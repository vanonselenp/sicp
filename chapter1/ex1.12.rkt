#lang sicp

(define (pascal r c)
  (if (or (= c 1) (= r 1))
      1
      (+ (pascal r (- c 1)) (pascal (- r 1) c))))

(pascal 1 1)
(pascal 1 2)
(pascal 1 3)
(pascal 3 4)
(pascal 3 5)
(pascal 3 5)
(pascal 4 4)
(pascal 4 5)