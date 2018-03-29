;; (defun fib (num)
;;   "A tail-recursive computation of the nth element of the Fibonacci sequence"
;;   (labels ((fib-aux (num f1 f2)
;;              (if (zerop num) f1
;;                  (fib-aux (1- num) f2 (+ f1 f2)))))
;;     (fib-aux num 0 1)))
(in-package :project-euler)

(defun problem-002 (&optional (n 4000000))
  (loop with f1 = 1 and f2 = 2 until (> f2 n)
        when (evenp f2) sum f2 do (shiftf f1 f2 (+ f1 f2))))
