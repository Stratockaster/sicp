#lang racket/base

(require rackunit)

(define (double n) (+ n n))
(define (halve n) (/ n 2))

(define (fast-* a b) 
  (cond ((= b 0) 0) 
        ((= b 1) a) 
        ((even? b) (double (fast-* a (halve b)))) 
        (else (+ a (fast-* a (- b 1))))))

(check-eq? (fast-* 2 2) 4)
(check-eq? (fast-* 3 4) 12)