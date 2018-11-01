(define (make-monitored func)
	(let ((count 0))

	(define (mf message)
		(cond ((eq? message 'how-many-calls?) count)
			  ((eq? message 'reset-count) (set! count 0))
			(else (begin (set! count (+ count 1)) (func message)))))

mf)
