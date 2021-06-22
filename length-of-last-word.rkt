#lang racket

(define (length-of-last-word words)
  "https://leetcode.com/problems/length-of-last-word/"
  (if (string-suffix? words " ") 0 (string-length (last (string-split words " ")))))

(provide length-of-last-word)
