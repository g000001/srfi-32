;;;; srfi-32.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)


(defsystem :srfi-32
  :version "20200329"
  :description "SRFI 32 for CL: Sort Libraries"
  :long-description "SRFI 32 for CL: Sort Libraries
https://srfi.schemers.org/srfi-32"
  :author "Olin Shivers"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (named-readtables
               rnrs-compat 
               mbe
               srfi-23
               srfi-13)
  :components ((:file "package")
               (:file "sort-support")
               (:file "lmsort")
               (:file "vhsort")
               (:file "vmsort")
               (:file "vbinsearch")
               (:file "sortp")
               (:file "visort")
               (:file "vqsort")
               (:file "sort")
               (:file "test")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-32))))
  (let ((name "https://github.com/g000001/srfi-32")
        (nickname :srfi-32))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


(defmethod perform ((o test-op) (c (eql (find-system :srfi-32))))
  (let ((*package*
         (find-package
          "https://github.com/g000001/srfi-32#internals")))
    (eval
     (read-from-string
      "
      (or (let ((result (do-test 128)))
            (cl:print result)
            (apply #'cl:every (lambda (x y z) (= x y z)) (cddr result)))
          (error \"test-op failed\") )"))))


;;; *EOF*
