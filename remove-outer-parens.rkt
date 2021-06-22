#lang racket

(define (remove-outer-parens s)
  (define depth 0)
  (define res "")
  (for ([c s])
    (if (equal? (string c) ")")
        (set! depth (- depth 1))
        (set! depth depth))
    (if (equal? #f (= depth 0))
        (set! res (string-append res (string c)))
        "")
    (if (equal? (string c) "(")
        (set! depth (+ depth 1)) 
        ""))
  res)

(provide remove-outer-parens)
