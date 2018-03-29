(asdf:defsystem project-euler
  :name "project-euler"
  :description "Solutions to Project Euler"
  :components ((:file "./src/helpers")
               (:file "./src/001")
               (:file "./src/002")
               (:file "./src/003")
               (:file "./src/004")
               (:file "./src/005")
               (:file "./src/006")
               (:file "./src/007")))

(defpackage :project-euler
  (:use :cl :uiop :asdf)
  (:export
   #:primep
   #:partial
   #:rpartial
   #:problem-001
   #:problem-002
   #:problem-003
   #:problem-004
   #:problem-005
   #:problem-006
   #:problem-007))

;;;; stuff to think about for later...
  ;; :components ((:module "helpers"
  ;;                       :pathname #p"src/"
  ;;                       :components ((:file "helpers"))
  ;;               )))
