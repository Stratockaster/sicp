#lang racket/base

(require rackunit)

(define (square x) (* x x))

(define (fast-expt b n)
  (fast-expt-iter 1 b n))

(define (fast-expt-iter a b n)
	(if (= n 0) 
        a
        (if (even? n) 
            (fast-expt-iter a (square b) (/ n 2)) 
            (fast-expt-iter (* a b) b (- n 1))
        )
    )
)

(check-eq? (fast-expt 2 2) 4)
(check-eq? (fast-expt 3 3) 27)