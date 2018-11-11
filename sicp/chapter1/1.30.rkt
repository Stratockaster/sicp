#lang racket/base

(require rackunit)

(define (identity x) x)

(define (inc x) (+ x 1))

(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
        	result
            (iter (next a) (+ result (term a)))))
    (iter a 0))

(check-eq? (sum identity 1 inc 10) 55)