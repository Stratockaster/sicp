#lang racket/base

(require rackunit)

(define (even? n)
    (= (remainder n 2) 0))

(define (prime? n)
    (= n (smallest-divisor n)))

(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (divides? a b) (= (remainder b a) 0))

(define (next n) 
    (if (= n 2) 3 (+ n 2)))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
              ((divides? test-divisor n) test-divisor)
              (else (find-divisor n (next test-divisor)))))



(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (current-milliseconds) start-time))
        (display "")))

(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))

(define (search-for-primes from to)
    (
        cond ((> from to) (newline) (display "end"))
             ((even? from) (search-for-primes (+ from 1) to))
             (else (timed-prime-test from) (search-for-primes (+ from 1) to))
	)
)

(search-for-primes 1000 100000)