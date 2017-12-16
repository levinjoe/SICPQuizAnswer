(define (cont-frac n d k)
    (define (cont-frac-r index)
	(if (= index k)
	    0
	    (/ (n index)
	       (+ (d index)
		  (cont-frac-r (+ index 1))))))
  (cont-frac-r 1))

(define (cont-frac-new n d k)
    (define (cont-frac-i index result)
	(if (= index 0)
	    result
	    (cont-frac-i (- index 1)
			 (/ (n k)
			    (+ (d k) result)))))
  (cont-frac-i k 0.0))