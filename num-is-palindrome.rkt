#lang racket

(define (num-is-palindrome num)
  "https://leetcode.com/problems/palindrome-number/"
  (define num-list (string->list (number->string num)))
  (equal? (reverse num-list) num-list))

(provide num-is-palindrome)
