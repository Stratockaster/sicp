#lang racket/base

(require rackunit)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))
        ))

(check-eq? (A 1 10) 1024)
(check-eq? (A 2 4) 65536)
(check-eq? (A 3 3) 65536)
