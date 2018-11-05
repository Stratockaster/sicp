#lang racket/base

(require rackunit)

(define (square x) (* x x))

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (square-iter-delta guess x)
  (if (in-delta? guess (improve guess x))
      guess
      (square-iter-delta (improve guess x) x)))

(define (in-delta? guess1 guess2)
  (< (abs (- guess1 guess2)) 0.001))

(define (sqrt-delta x)
  (square-iter-delta 1.0 x))




(define (cube-improve guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))

; (define (cubrt-iter guess x)
;     (if (in-delta? guess (cube-improve guess x))
;                          guess
;                          (cubrt-iter (improve guess x) x)))

(define (cubrt-iter guess x)
  (if (in-delta? guess (cube-improve guess x))
      guess
      (cubrt-iter (cube-improve guess x) x)))

(define (cube-root x)
    (cubrt-iter 1.0 x))

; (display (cube-root 8))