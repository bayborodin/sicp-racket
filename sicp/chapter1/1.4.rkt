; Exercise 1.4
; Observe that our model of evaluation allows for combinations
; whose operators are compound expressions. Use this observation
; to describe the behaviour of the following procedure.

#lang sicp

(#%require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-equal? (a-plus-abs-b 4 5) 9)
(check-equal? (a-plus-abs-b 4 -5) 9)