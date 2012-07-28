;---------------------------------------------------------------------------------
; ******* markdown config *******
;        Author:  Kelvin Hu
;       Created:  06/27/2012
; Last Modified:  06/27/2012
;---------------------------------------------------------------------------------


(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))


(provide 'conf-markdown)
