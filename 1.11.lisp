(define (f1 n)
    (if (< n 3) 
	n
	(+ (f1 (- n 1))
	   (* 2 (f1 (- n 2)))
	   (* 3 (f1 (- n 3))))))


(define (f2 n)
    (define (iter n1 n2 n3 count)
	(if (= count 0)
	    n1
	    (iter (+ n1 
                     (* 2 n2) 
		     (* 3 n3))
		  n1
		  n2
		  (- count 1))))
  (if (< n 3)
      n
     (iter 2 1 0 (- n 2))))