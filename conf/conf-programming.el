;-------------------------------------------------------------------------------
; ******* main programming config *******
;        Author:  Kelvin Hu
;       Created:  06/16/2012
; Last Modified:  03/28/2013
;-------------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/conf/programming")

;; do not require this configuration as dos.el cannot be found in elpa or melpa
;; (require 'conf-batch)

(require 'conf-lisp)

(require 'conf-cc)

(require 'conf-rust)


(provide 'conf-programming)
