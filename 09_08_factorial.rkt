#lang racket

; Non-tail recursion
(define (fact n)
    (if (zero? n)
        1
        (* n (fact (sub1 n)))
    )
)

; Iterative process
(define (factorial n)
    (define (fact-iter product counter max-counter)
        (if (> counter max-counter)
            product
            (fact-iter (* counter product) (add1 counter) max-counter)
        )
    )
    (fact-iter 1 1 n)
)
