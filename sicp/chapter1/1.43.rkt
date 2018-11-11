#lang racket/base

(require rackunit)

(define (inc x) (+ x 1))
(define (square x) (* x x))

(define (compose f g)
    (lambda (x) (f (g x))))


(define (repeated f n)
    (if (= n 1) f (compose f (repeated f (- n 1)))))


(check-eq? ((repeated inc 3) 5) 8)
(check-eq? ((repeated square 2) 5) 625)
(check-eq? ((repeated square 3) 5) 390625)
