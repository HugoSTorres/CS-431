; HW3 Problem 1 - sort

; Recursive bubble sort requires a second check on every pass.
; The smaller list is sorted, and then if out of order it's resorted before
; 	returning to the next function call.

; bubble sort
(defun hsort (l)
	(cond ((null l) nil)
	((= (length l) 1) l)
	((> (car l) (cadr l))
		(_sort (cons (car l) (hsort (cdr l)))))
	(t (_sort (cons (cadr l) (hsort (cons (car l) (cddr l)))))))
	)

; for the second pass needed by bubble sort
(defun _sort (l)
	(cond ((> (car l) (cadr l)) l)
	(t (hsort l)))
	)
