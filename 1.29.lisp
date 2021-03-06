(define (sympson-integral f a b n)
    (define (sum term start next end)
	(if (> start end)
	    0
	    (+ (term start)
	       (sum term (next start) next end))))
  (define h (/ (- b a) n))
  (define (funcY index)
      (f (+ a (* index h))))
  (define (termY index)
      (cond ((= index 0) (funcY index))
	    ((= index n) (funcY index))
	    ((= (remainder index 2) 1) (* 4 (funcY index)))
	    (else (* 2 (funcY index)))))
  (define (next-index index)
      (+ index 1))
  (/ (* h (sum termY 0 next-index n))
     3))
	   
