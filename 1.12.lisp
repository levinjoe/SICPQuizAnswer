(define (pascal n m)
    (cond ((= m 1) 1)
	  ((= m n) 1)
	  (else (+ (pascal (- n 1) m)
		   (pascal (- n 1) (- m 1))))))