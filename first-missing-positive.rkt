#lang racket

(define (first-missing-positive nums)
  "https://leetcode.com/problems/first-missing-positive/"
  (foldl (lambda (num res) (if (= res num) (+ res 1) res)) 1 (sort nums <)))

(provide first-missing-positive)
