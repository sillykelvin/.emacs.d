;---------------------------------------------------------------------------------
; ******* batch programming config *******
;        Author:  Kelvin Hu
;       Created:  06/16/2012
; Last Modified:  06/16/2012
;---------------------------------------------------------------------------------

(require 'dos)

(add-to-list 'auto-mode-alist '("\\.bat$" . dos-mode))
(add-to-list 'auto-mode-alist '("\\.cmd$" . dos-mode))



(provide 'conf-batch)
