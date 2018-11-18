#lang racket/base

(require rackunit)

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (make-interval a b)
    (cons a b))
	
(define (lower-bound z) (car z))
(define (upper-bound z) (cdr z))

(define (sub-interval x y) 
    (make-interval (- (lower-bound x) (upper-bound y)) 
                   (- (upper-bound x) (lower-bound y))))

(define i1 (make-interval 2 10))
(define i2 (make-interval 3 7))

(check-eq? (lower-bound (sub-interval i1 i2)) -5)
(check-eq? (upper-bound (sub-interval i1 i2)) 7)