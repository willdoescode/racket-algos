#lang racket

(require rackunit)
(require "two-sum.rkt")
(require "remove-outer-parens.rkt")
(require "remove-dups.rkt")

(check-equal? (two-sum 5 '(1 2 3 4)) '(1 2))
(check-equal? (two-sum 21 '(0 2 11 19 90)) '(1 3))
(check-equal? (two-sum 3 '(-8 -2 0 1 5 8 11)) '(1 4))

(check-equal? (remove-outer-parens "(()())(())") "()()()")
(check-equal? (remove-outer-parens "(()())(())(()(()))") "()()()()(())")
(check-equal? (remove-outer-parens "()()") "")

(check-equal? (remove-dups '(1 1 2)) 2)
(check-equal? (remove-dups '(0 0 1 1 1 2 2 3 3 4)) 5)
