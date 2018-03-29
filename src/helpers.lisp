;;;; Helper functions for Project Euler solutions
(in-package :project-euler)

(defun primep (n)
  "Predicate to test if the number n is prime"
  (when (> n 1)
    (loop for i from 2 to (sqrt n)
          when (zerop (mod n i)) return nil finally (return t))))

(defun partial (func &rest args1)
  (lambda (&rest args2)
    (apply func (append args1 args2))))

(defun rpartial (func &rest args1)
  (lambda (&rest args2)
    (apply func (append args2 args1))))
