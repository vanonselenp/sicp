#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -1)

#|
Explanation. Check if b is bigger than 0, if yes then add to a other subtract negative b from a, which basically adds it.
|#