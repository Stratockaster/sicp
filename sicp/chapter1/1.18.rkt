#lang racket/base

(require rackunit)

(define (double n) (+ n n))
(define (halve n) (/ n 2))

(define (fast-* a b) 
    (fast-*-iter a b 0))

(define (fast-*-iter a b c) 
    (cond ((= b 0) c) 
        ((even? b) (fast-*-iter (double a) (halve b) c)) 
        (else (fast-*-iter a (- b 1) (+ c a)))))

(check-eq? (fast-* 2 2) 4)
(check-eq? (fast-* 3 4) 12)