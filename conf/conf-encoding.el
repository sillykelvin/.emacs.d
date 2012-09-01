;---------------------------------------------------------------------------------
; ******* encoding config *******
;        Author:  Kelvin Hu
;       Created:  09/01/2012
; Last Modified:  09/01/2012
;---------------------------------------------------------------------------------

;;; set the default encoding to utf-8 other than iso-8859-1
(prefer-coding-system 'utf-8)

;;; but the above setting has a problem: if the buffer is saved with a Chinese
;;; filename, the filename will be garbage characters, use the following to fix
;;; this issue
(if is-os-windows
    (setq file-name-coding-system 'gb18030))


(provide 'conf-encoding)
