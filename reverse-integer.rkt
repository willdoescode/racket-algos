#lang racket

(define (reverse-integer i)
  "https://leetcode.com/problems/reverse-integer/"
  (define sign (if (< i 0) -1 1))
  (* sign 
     (string->number
      (list->string 
       (reverse
        (string->list
         (number->string
          (* sign i))))))))

(provide reverse-integer)
