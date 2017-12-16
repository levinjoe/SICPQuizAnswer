(define (tan-cf x k)
    (define (n index)
	(if (= index 1)
	    x
	    (- (square x))))
  (define (d index)
      (- (* 2 index) 1))
  (cont-frac n d k))