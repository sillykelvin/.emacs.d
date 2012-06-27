;---------------------------------------------------------------------------------
; ******* jdee config *******
;        Author:  Kelvin Hu
;       Created:  05/13/2012
; Last Modified:  06/02/2012
;---------------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/lib/elib")
(add-to-list 'load-path "~/.emacs.d/lib/jdee/lisp")

(require 'jde)

(setq jde-check-version-flag nil)

(setq defer-loading-jde nil)

(provide 'conf-jdee)
