(in-package :project-euler)

(defun problem-003 (&optional (n 600851475143))
  (loop with num = n for i from 1 to (sqrt num)
        when (and (zerop (mod n i))
                  (primep i))
          maximize i))
