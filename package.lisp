;;;; package.lisp

(cl:in-package :cl-user)


;; (delete-package :srfi-32)

(defpackage :srfi-32
  (:use)
  (:export :list-sorted?
           :list-merge 
           :list-merge!
           :list-sort  
           :list-sort! 
           :list-stable-sort
           :list-stable-sort!
           :list-delete-neighbor-dups
           :list-delete-neighbor-dups!
           :vector-sorted?
           :vector-merge  
           :vector-merge! 
           :vector-sort
           :vector-sort!
           :vector-stable-sort
           :vector-stable-sort!
           :vector-delete-neighbor-dups
           :vector-delete-neighbor-dups!)
  (:export :list-sorted?
           :vector-sorted?)
  (:export :list-merge-sort
           :list-merge-sort!
           :list-merge  
           :list-merge!)
  (:export :vector-merge-sort 
           :vector-merge-sort! 
           :vector-merge 
           :vector-merge!)
  (:export :heap-sort
           :heap-sort!)
  (:export :quick-sort
           :quick-sort!)
  (:export :insert-sort
           :insert-sort!)
  (:export :list-delete-neighbor-dups
           :list-delete-neighbor-dups!)
  (:export :vector-delete-neighbor-dups
           :vector-delete-neighbor-dups!))


;; (delete-package :srfi-32.internal)
(defpackage :srfi-32.internal
  (:use :srfi-32 :named-readtables :fiveam :mbe
        :srfi-23 :rnrs)
  (:import-from :cl :***))

