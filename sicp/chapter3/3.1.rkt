((define (make-accumulator n)
  (let (sum n))
  	(lambda (amount) (set! sum (+ sum n)) sum)))