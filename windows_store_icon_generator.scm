;2016 Levi D. Smith
;Place this script in the \Program Files\GIMP 2\share\gimp\2.0\scripts folder (by default)
;For best resutls, use a 620x300 image, with everything important in the middle
(define (windows-store-icon-generator))
(script-fu-register
"windows-store-icon-generator"  
"Windows Store Icon Generator"
"Generates icons for the Windows Store.  Requires source image to be 620x300!"
"Levi D. Smith"
"2016 levidsmith.com"
"September 23, 2016"
""
SF-IMAGE     "Image"         0
SF-DRAWABLE  "Drawable"      0
SF-STRING "Source image must be 620x300!  Inner 300x300 will be cropped for icons." "N/A"
SF-STRING "Filename prefix" "icon"
SF-DIRNAME "Output directory" "/temp/out"
)
(script-fu-menu-register "windows-store-icon-generator" "<Image>/Filters/Levi D. Smith Games")
(define (windows-store-icon-generator img-orig pic-layer info prefix dir)
;	(define img)
;	(define layer)
;	(define size_w)
;	(define size_h)
	
;	(set! size 256)
;	(set! img (car (gimp-image-new size size RGB)))
;	(set! layer (car (gimp-layer-new img size size RGB "layer 1" 100 NORMAL)))
;	(set! layer (gimp-image-get-active-layer img))
;	(set! pic-layer (car (gimp-image-get-active-drawable img)))
;	(set! pic-layer (car (gimp-image-get-layers img 1)))
	
;	(gimp-image-undo-disable img)
;	(gimp-image-add-layer img layer 0)


;	(set! img (car (gimp-image-duplicate img-orig)))

;	(gimp-selection-all img)
;	  (set! layer (car (gimp-image-flatten img)))
	
	
;	(gimp-display-new img)
;	(gimp-image-undo-enable img)
	
;	(gimp-image-resize img 24 24 0 0)
;	(gimp-layer-resize layer 24 24 0 0)
;	(gimp-layer-resize-to-image-size layer)
;	(gimp-file-save RUN-NONINTERACTIVE img layer (string-append dir "foo.png" ) "?")


	;rectangles
	(make-image img-orig 620 300 prefix dir FALSE)	
	(make-image img-orig 310 150 prefix dir FALSE)
	(make-image img-orig 1240 600 prefix dir FALSE)

	;squares
	(make-image img-orig 1240 1240 prefix dir TRUE)
	(make-image img-orig 620 620 prefix dir TRUE)	
	(make-image img-orig 600 600 prefix dir TRUE)	
	(make-image img-orig 310 310 prefix dir TRUE)
	(make-image img-orig 300 300 prefix dir TRUE)
	(make-image img-orig 284 284 prefix dir TRUE)
	(make-image img-orig 176 176 prefix dir TRUE)
	(make-image img-orig 150 150 prefix dir TRUE)
	(make-image img-orig 142 142 prefix dir TRUE)
	(make-image img-orig 100 100 prefix dir TRUE)
	(make-image img-orig 88 88 prefix dir TRUE)
	(make-image img-orig 71 71 prefix dir TRUE)
	(make-image img-orig 70 70 prefix dir TRUE)
	(make-image img-orig 50 50 prefix dir TRUE)
	(make-image img-orig 48	48 prefix dir TRUE)
	(make-image img-orig 44 44 prefix dir TRUE)
	(make-image img-orig 30 30 prefix dir TRUE)
	(make-image img-orig 24 24 prefix dir TRUE)
	
	
)

(define (make-image img-orig size_w size_h prefix dir make_square)
	(define img)
	(define layer)
	(set! img (car (gimp-image-duplicate img-orig)))
	(gimp-selection-all img)
	(set! layer (car (gimp-image-flatten img)))
	
	
	(cond ((= make_square TRUE)
			(gimp-image-crop img 300 300 160 0)
;			(gimp-image-resize img 300 300 0 0)
;			(gimp-layer-resize layer 300 300 0 0)
          )
	)
	
;	(set! size_w 24)
;	(set! size_h 24)
	(gimp-image-scale img size_w size_h)
	(gimp-file-save RUN-NONINTERACTIVE img layer (string-append dir "\\" prefix "_" (number->string size_w) "x" (number->string size_h) ".png" ) "?")
	(gimp-image-delete img)

)
;	(gimp-layer-resize layer 24 24 0 0)


;(gimp-image-resize theImage 256 256 0 0)