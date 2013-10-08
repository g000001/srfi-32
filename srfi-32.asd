;;;; srfi-32.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)

(defsystem :srfi-32
  :serial t
  :depends-on (:fiveam
               :named-readtables
               :rnrs-compat 
               :mbe
               :srfi-23
               :srfi-13)
  :components ((:file "package")
               (:file "sort-support")
               (:file "lmsort")
               (:file "vhsort")
               (:file "vmsort")
               (:file "vbinsearch")
               (:file "sortp")
               (:file "visort")
               (:file "vqsort")
               (:file "sort")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-32))))
  (load-system :srfi-32)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-32.internal :srfi-32))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

