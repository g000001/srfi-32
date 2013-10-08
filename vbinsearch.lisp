(cl:in-package :srfi-32.internal)
(in-readtable :rnrs)

;;; Vector binary search
;;; Olin Shivers 98/11.

;;; Returns the index of the matching element.
;;; (vector-binary-search '#((1 . one) (3 . three) (4 . four) (25 . twenty-five))
;;;                       < car 4)
;;;   => 2

(define (vector-binary-search v key< elt->key key . maybe-start+end)
  (let-vector-start+end (start end) #'vector-binary-search v maybe-start+end
    (let lp ((left start) (right end))
      (and (< left right)
	   (let* ((m (quotient (+ left right) 2))
		  (elt (vector-ref v m))
		  (elt-key (_elt->key elt)))
	     (cond ((_key< key elt-key) (lp left m))
		   ((_key< elt-key key) (lp (+ m 1) right))
		   (else m)))))))

