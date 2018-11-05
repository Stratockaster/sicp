#lang racket/base

(require rackunit)

(define (func n)
    (if (< n 3)
        n 
        (+ (func (- n 1))
           (func (- n 2))
           (func (- n 3))
        )
    )
)

(check-eq? (func 15) 4841)
(check-eq? (func 2) 2)

(define (f n)
    (cond ((< n 3) n)
          (else (f-iter 0 1 2 (- n 2)))
    )
)

(define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter b c (+ c b a) (- count 1))
    )
)

(check-eq? (f 15) 4841)
(check-eq? (f 2) 2)