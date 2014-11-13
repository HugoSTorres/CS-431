(load "sort.lisp")

(defun hmedian (l)
	(hsort l)

	(nth (floor (/ (length l) 2)) l)
	)
