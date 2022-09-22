#lang racket

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (snoc l a)
  (append l (list a)))

(define (length list)
  (if (null? list)
      0
      (add1 (length (cdr list))))) 

(define (reverse list)
  (define (rev l r)
    (if (null? l)
        r
        (rev (cdr l) (cons (car l) r))))
    (rev list '()))

(define (erase_last l r)
  (if (= (length l) 1)
      r
      (erase_last (cdr l) (snoc r (car l)))))

(define (last l)
  (if (= (length l) 1)
      (car l)
      (last (cdr l))))

(define (reverse2 l r)
  (if (= (length l) 1)
  (snoc r (last l))
  (reverse2 (erase_last l '()) (snoc r (last l)))))