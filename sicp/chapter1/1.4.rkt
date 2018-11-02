#lang racket/base

(require rackunit)

(define (a-plus-abs-b a b) 
    ((if (> b 0) + -) a b))

(check-eq? (a-plus-abs-b 2 4) 6)
(check-eq? (a-plus-abs-b 2 -4) 6)