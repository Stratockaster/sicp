(define (cons x y)
    (define (dispatch message)
        (cond ((= message 0) x)
              ((= message 1) y)
              (else (error "arg is not 0 or 1" message))))
    dispatch)

(define (car z) (z 0))
(define (cdr z) (z 1))


(define (cons x y)
	(lambda (m) (m x y)))

(define (car z)
	(z (lambda (p q) p)))

(define (cdr z)
	(z (lambda (p q) q)))