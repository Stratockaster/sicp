#lang racket/base

(require rackunit)

(define (make-interval a b)
    (cons a b))
	
(define (lower-bound z) (car z))
(define (upper-bound z) (cdr z))

(define (add-interval x y)
    (make-interval (+ (lower-bound x) (lower-bound y))
                   (+ (upper-bound x) (upper-bound y))))

(define (interval-radius interval)
	(/ (+ (lower-bound interval) (upper-bound interval)) 2))

(define i1 (make-interval 2 10))
(define i2 (make-interval 3 7))
(define i3 (add-interval i1 i2))

(check-eq? (interval-radius i3) (+ (interval-radius i1) (interval-radius i2)))