#lang racket/base

(require rackunit)

(check-eq? 10 10)

(check-eq? (+ 5 3 4) 12)

(check-eq? (- 9 1) 8)

(define a 3)
(define b (+ a 1))

(check-eq? (+ a b (* a b)) 19)

(check-eq? (= a b) #f)

(check-eq? (if (and (> b a) (< b (* a b))) b a) b)

(check-eq? (cond ((= a 4) 6)
		   ((= b 4) (+ 6 7 a))
		   (else 25)) 16)