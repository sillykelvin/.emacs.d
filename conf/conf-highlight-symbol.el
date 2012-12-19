;---------------------------------------------------------------------------------
; ******* highlight-symbol config *******
;        Author:  Kelvin Hu
;       Created:  12/19/2012
; Last Modified:  12/19/2012
;---------------------------------------------------------------------------------

(require 'highlight-symbol)

(global-set-key (kbd "C-<f3>") 'highlight-symbol-at-point)
(global-set-key (kbd "<f3>") 'highlight-symbol-next)
(global-set-key (kbd "M-<f3>") 'highlight-symbol-prev)


(provide 'conf-highlight-symbol)
