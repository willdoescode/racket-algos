#lang racket

(define (count-upper s)
  (foldr 
   (lambda (c i) (if (char-upper-case? c) (+ i 1) i)) 
   0  (string->list s)))

(provide count-upper)
