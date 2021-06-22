#lang racket

(define (remove-dups l)
  "https://leetcode.com/problems/remove-duplicates-from-sorted-array/"
  (length (remove-duplicates l)))

(provide remove-dups)
