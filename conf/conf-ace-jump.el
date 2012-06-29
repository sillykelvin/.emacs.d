;---------------------------------------------------------------------------------
; ******* ace-jump config *******
;        Author:  Kelvin Hu
;       Created:  06/29/2012
; Last Modified:  06/29/2012
;---------------------------------------------------------------------------------

(require 'ace-jump-mode)


;;; in fact what we need is just one key binding, because this mode has three submodes
;;; so:
;;;    1. C-x / will call ace-jump-char-mode
;;;    2. C-u C-x / will call ace-jump-word-mode
;;;    3. C-u C-u C-x / will call ace-jump-line-mode


(global-set-key (kbd "C-x /") 'ace-jump-mode)
;(global-set-key (kbd "C-c C-f") 'ace-jump-char-mode)
;(global-set-key (kbd "C-c C-w") 'ace-jump-word-mode)
;(global-set-key (kbd "C-c C-l") 'ace-jump-line-mode)


(provide 'conf-ace-jump)
