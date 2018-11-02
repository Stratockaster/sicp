#lang racket/base

(require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-squares-of-two-max a b c)
    (cond ((and (< a b) (< a c)) (sum-of-squares b c))
          ((and (< b a) (< b c)) (sum-of-squares a c))
          ((and (< c a) (< c b)) (sum-of-squares a b))
          (else (sum-of-squares a a))
    ))

(check-eq? (square 2) 4)
(check-eq? (sum-of-squares 1 2) 5)
(check-eq? (sum-of-squares-of-two-max 1 2 3) 13)
(check-eq? (sum-of-squares-of-two-max 10 20 30) 1300)
(check-eq? (sum-of-squares-of-two-max 10 10 10) 200)
(check-eq? (sum-of-squares-of-two-max 6 5 6) 72)