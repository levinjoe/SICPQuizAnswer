(define (prime-test n)
    (define (prime-test-iter start end)
	(if (> start end)
	    true
	    (if (fermat-test start)
		(prime-test-iter (+ start 1) end)
		false)))
  (define (fermat-test a)
      (= (expmod a n n) a))
  
  (define (expmod base exp m)
      (cond ((= exp 0) 1)
	      ((even? exp)
	       (remainder (square (expmod base (/ exp 2) m)) 
			  m))
	      (else
	       (remainder (* base (expmod base (- exp 1) m))
			  m))))
  (prime-test-iter 2 (- n 1)))