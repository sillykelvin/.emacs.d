;---------------------------------------------------------------------------------
; ******* Lisp style programming config *******
;        Author:  Kelvin Hu
;       Created:  12/12/2012
; Last Modified:  12/12/2012
;---------------------------------------------------------------------------------

(require 'util-common)

(kh/add-hook '(lisp-mode-hook emacs-lisp-mode-hook)
             '(lambda ()
                (show-paren-mode t)))


(provide 'conf-lisp)
