#lang racket/base

(require rackunit)

(define (pascal row col)
    (cond ((= col 1) 1)
    	  ((> col row) 0)
          (else (+ (pascal (- row 1) (- col 1))
          	       (pascal (- row 1) col)
          	    )
          )
    )
)

(check-eq? (pascal 1 1) 1)
(check-eq? (pascal 2 2) 1)
(check-eq? (pascal 3 2) 2)
(check-eq? (pascal 4 2) 3)
(check-eq? (pascal 5 2) 4)
(check-eq? (pascal 5 3) 6)