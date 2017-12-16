(define (sum1 a b)
    (begin (display a) (display b))
  (define (inc x)
      (+ x 1))
  (define (dec x)
      (- x 1))
  (if (= a 0)
      b
      (inc (sum1 (dec a) b))))

(define (sum2 a b)
    (begin (display a) (display b))
  (define (inc x)
      (+ x 1))
  (define (dec x)
      (- x 1))
  (if (= a 0)
      b
      (sum2 (dec a) (inc b))))