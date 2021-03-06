(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
	  (else else-clause)))

(define (sqrt x)
    (define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			   x)))
  (define (good-enough? guess x)
      (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
      (average guess (/ x guess)))
  (define (average x y)
      (/ (+ x y) 2))
  (sqrt-iter 1.0 x))