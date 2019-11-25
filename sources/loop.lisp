
; Warning: First, seting the package where the functions will be defined 
(in-package :mfl)

; Functions definition

(om::defmethod! m-cartesian ((list1 list) (list2 list) (funct t))
  :initvals '( '(a b c) '(1 2 3)  'list)
  :indoc '("list1"  "list2"  "symbol function")
  :icon 130
  :doc "cartesian product of two lists with a function <funct>"
  (loop for x in list1
        collect (loop for y in list2
                      collect (funcall funct x y)
                      )))

(om::defmethod! window-shift (list window step)
  :initvals '( '(a b c d e f g) 3  2)
  :indoc '("list1"  "window"  "step")
  :icon 131
  :doc "read a list by a window sizee of <window> with a step of <step>. 
                  This function build sub-lists"
  (loop for x from 0 to (- (length list) window) by step
        collect (loop 
                  for y from x to (+ x (1- window))
                  collect (nth y list))))

; sometimes, could be usefull to give a shor example of what the function does
; just a line for the syntax, and another for the result
;(window-shift '(a b c d e f g h i j k l m)  3 2)
; -> ((a b c) (c d e) (e f g) (g h i) (i j k) (k l m))
