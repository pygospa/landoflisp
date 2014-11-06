;; defparameter = global variables

;; let = local variables
(let ((a 5)
      (b 6))
  (+ a b))

;; defun = global functions

;; flet = local functions
(flet ((f (n)
       (+ n 10)))
  (f 5))

(flet ((f (n)
	  (+ n 10))
       (g (n)
	  (- n 3)))
  (g (f 5)))

;; labels = local functions that know each other during definition
(labels ((a (n)
	    (+ n 5))
	 (b (n)
	    (+ (a n) 6)))
  (b 10))
