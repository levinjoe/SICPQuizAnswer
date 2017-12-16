(define (cub-sqrt x)
    (define (cub-sqrt-iter guess prev-guess x)
	(if (good-enough? guess prev-guess)
		guess
		(cub-sqrt-iter (improve guess x)
                           guess
			   x)))
  (define (good-enough? guess prev-guess)
      (if (or (< guess 1) (> guess 1000000.0)) 
	  (< (abs (/ (- guess prev-guess) guess)) 0.001)
	  (< (abs (- guess prev-guess)) 0.001)))
  (define (improve guess x)
      (/ (+ (/ x (square guess))
	    (* 2 guess))
	 3))
  (cub-sqrt-iter 1.0 0 x))