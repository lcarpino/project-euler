(in-package :project-euler)

(defun problem-007 (&optional (n 10001))
  (loop with nth-prime = 0 for i upfrom 2
        when (primep i) do (incf nth-prime)
          until (equal nth-prime n) finally (return i)))
