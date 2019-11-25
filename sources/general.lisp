
; Warning: First, seting the package where the functions will be defined 
(in-package :mfl)

; Functions definition

(om::defmethod! carre ((x number))
 :initvals '(10 )    ; an initial values list
	:indoc '("a number" ) ; an string list with short docs
	:icon 111  ; the icon
	:doc "Calculates the square of <number>"
	
  (* x x))


(om::defmethod! cube ((x number))
 :initvals '(9 )    ; an initial values list
	:indoc '("a number" ) ; an string list with short docs
	:icon 113   ; the icon
	:doc "Calculates the cube of <number>"
  (* x x x))
