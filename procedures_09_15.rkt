#lang racket

(define (fold f a n)
  (if (zero? n)
      a
      (f (sub1 n) (fold f a (sub1 n)))))


(define (fold_f f a n)
  (if (= 0 n)
      1
      (if (= 1 n)
          a
         (f n (fold_f f a (sub1 n))))))


(define (fold_p f a n)
  (if (= 0 n)
      1
      (if (= 1 n)
          a
          (f a (fold_p f a (sub1 n))))))


(define (fold_pi f a n)
  (if (= 0 n)
      1
      (if (= 1 n)
          a
          (f a (fold_p f a (sub1 n))))))
