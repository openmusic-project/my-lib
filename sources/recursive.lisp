; Warning: First, seting the package where the functions will be defined 
(in-package :mfl)

; Functions definition

(om::defmethod! my-fact ((n number))
  :initvals '( 5)
  :indoc '("<n>")
  :icon 129
  :doc "factorial from a number <n>"
  (if  (<= n 1) 1
       (* n (my-fact (- n 1)))))

; (my-fact 5)


(om::defmethod! maliste (( l list))
 :initvals '( '(a b c d))
  :indoc '("just a list")
  :icon 128
  :doc "just copy, go thru a list <l>, in a recursive way"
	(if (null l)
          nil
          (cons (car l) (maliste (cdr l)))))
