#lang racket/base

(require rackunit)

; (define (make-account balance acc-pass)
; 	(let ((acc-pass acc-pass))
; 	(define (withdraw amount) 
; 		(if (>= balance amount)
; 			(begin (set! balance (- balance amount)) balance)
; 		"Недостаточно денег на счете"))
; 	(define (deposit amount)
; 		(set! balance (+ balance amount))
;     	balance)
;   	(define (dispatch password m)
;   		(if (eq? password acc-pass)
;   			(cond ((eq? m ’withdraw) withdraw)
;   				  ((eq? m ’deposit) deposit)
; 				  (else (error "Неизвестный вызов -- MAKE-ACCOUNT"
; 			m)))
;   		(else (error "Неверный пароль")))
; dispatch)