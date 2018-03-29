(in-package :project-euler)

(defun problem-005 (&optional (n 20))
  (loop with divisors = (loop for i from 2 to n collect i)
        for i upfrom 1
        when (every (lambda (j) (zerop (mod i j))) divisors) return i))
