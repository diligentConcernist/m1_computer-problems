#lang racket

(define epsilon 0.001)

(define (square x)
    (* x x)
)

(define (close-enough? x y)
    (< (abs (- x y)) epsilon)
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (improve y x)
    (average y (/ x y))
)

(define (sqrt-loop y x)
    (if (close-enough? (square y) x)
        y
        (sqrt-loop (improve y x) x)
    )
)

(define sqrt
    (lambda (x)
        (sqrt-loop 1.0 x)
    )
)
