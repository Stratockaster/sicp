#lang racket/base

(require rackunit)

(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (same-sign x y) (or (and (> x 0) (> y 0)) (and (< x 0) (< y 0))))

(define (mul-rat x y)
    (define rat (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y)))
    ) (if (same-sign (numer rat) (denom rat))
          (cons (abs (numer rat)) (abs (denom rat)))
          (cons (abs (numer rat)) (- 0 (abs (denom rat))))))


(define one-half (make-rat 1 2))
(define one-third (make-rat 1 3))

(print-rat (mul-rat one-half one-third))
