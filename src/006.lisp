(in-package :project-euler)

(defun problem-006 (&optional (n 100))
  (let ((natural-list (loop for i from 1 to n collect i)))
    (- (expt (apply #'+ natural-list) 2)
       (apply #'+ (mapcar (rpartial #'expt 2) natural-list)))))
