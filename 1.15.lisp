(define (cub x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cub x))))
(define (sine angle)
    (if (not (> (abs angle) 0.1))
	angle
	(p (sin (/ angle 3.0)))))
