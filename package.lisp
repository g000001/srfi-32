;;;; package.lisp

(cl:in-package common-lisp-user)


(defpackage "https://github.com/g000001/srfi-32"
  (:use)
  (:export list-sorted?
           list-merge 
           list-merge!
           list-sort  
           list-sort! 
           list-stable-sort
           list-stable-sort!
           list-delete-neighbor-dups
           list-delete-neighbor-dups!
           vector-sorted?
           vector-merge  
           vector-merge! 
           vector-sort
           vector-sort!
           vector-stable-sort
           vector-stable-sort!
           vector-delete-neighbor-dups
           vector-delete-neighbor-dups!)
  (:export list-sorted?
           vector-sorted?)
  (:export list-merge-sort
           list-merge-sort!
           list-merge  
           list-merge!)
  (:export vector-merge-sort 
           vector-merge-sort! 
           vector-merge 
           vector-merge!)
  (:export heap-sort
           heap-sort!)
  (:export quick-sort
           quick-sort!)
  (:export insert-sort
           insert-sort!)
  (:export list-delete-neighbor-dups
           list-delete-neighbor-dups!)
  (:export vector-delete-neighbor-dups
           vector-delete-neighbor-dups!))


(defpackage "https://github.com/g000001/srfi-32#internals"
  (:use
   "https://github.com/g000001/srfi-61"
   "https://github.com/g000001/srfi-32"
   "https://github.com/g000001/srfi-23"
   named-readtables 
   rnrs)
  (:shadowing-import-from 
   "https://github.com/g000001/srfi-61"
   cond => else)
  (:import-from cl :***)
  (:import-from
   "https://github.com/g000001/srfi-13#internals"
   let-optionals*))


;;; *EOF*
