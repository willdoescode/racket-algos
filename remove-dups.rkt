#lang racket

(define (remove-dups l)
  (length (remove-duplicates l)))

(provide remove-dups)
