(in-package :project-euler)

(defun problem-001 (&optional (n 1000))
  (loop for i from 1 below n
        when (or (zerop (mod i 3))
                 (zerop (mod i 5)))
          sum i))
