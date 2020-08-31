#lang sicp

(#%require rackunit)

(define (squaresum a b)
        (+ (* a a) (* b b)))

(define (solution a b c)
            (if (> a b)
                (if (> b c)
                    (squaresum a b)
                    (squaresum a c))
                (if (> a c)
                    (squaresum a b)
                    (squaresum b c))
            )
)

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 5 7 2) 74)
(check-equal? (solution 5 4 3) 41)
