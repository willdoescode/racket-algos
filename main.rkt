#lang racket

(require rackunit)
(require "two-sum.rkt")
(require "remove-outer-parens.rkt")
(require "remove-dups.rkt")
(require "count-upper.rkt")
(require "reverse-integer.rkt")
(require "length-of-last-word.rkt")
(require "first-missing-positive.rkt")

(check-equal? (two-sum 5 '(1 2 3 4)) '(1 2))
(check-equal? (two-sum 21 '(0 2 11 19 90)) '(1 3))
(check-equal? (two-sum 3 '(-8 -2 0 1 5 8 11)) '(1 4))

(check-equal? (remove-outer-parens "(()())(())") "()()()")
(check-equal? (remove-outer-parens "(()())(())(()(()))") "()()()()(())")
(check-equal? (remove-outer-parens "()()") "")

(check-equal? (remove-dups '(1 1 2)) 2)
(check-equal? (remove-dups '(0 0 1 1 1 2 2 3 3 4)) 5)

(check-equal? (count-upper "HeLlO wOrLd") 5)
(check-equal? (count-upper "no uppers") 0)
(check-equal? (count-upper "Some uppers") 1)

(check-equal? (reverse-integer 123) 321)
(check-equal? (reverse-integer -123) -321)
(check-equal? (reverse-integer 120) 21)

(check-equal? (length-of-last-word "Hello World") 5)
(check-equal? (length-of-last-word "Hello ") 0)
(check-equal? (length-of-last-word " ") 0)

(check-equal? (first-missing-positive '(1 2 0)) 3)
(check-equal? (first-missing-positive '(3 4 -1 1)) 2)
(check-equal? (first-missing-positive '(7 8 9 11 12)) 1)
