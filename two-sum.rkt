#lang racket

(define (two-sum target nums)
  "https://leetcode.com/problems/two-sum/"
  (define known (make-hash))
  (define curr-v 0) (define curr-i 0)
  (for ([val nums] [idx (in-naturals)])
    (set! curr-v val) (set! curr-i idx)
    #:break (hash-has-key? known val)
    (hash-set! known (- target val) idx))
  (list (hash-ref known curr-v) curr-i))

(provide two-sum)
