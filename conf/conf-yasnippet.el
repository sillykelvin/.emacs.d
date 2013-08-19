;-------------------------------------------------------------------------------
; ******* yasnippet config *******
;        Author:  Kelvin Hu
;       Created:  07/29/2012
; Last Modified:  08/19/2013
;-------------------------------------------------------------------------------

(require 'yasnippet)

(yas-global-mode 1)

;;; I copied the configuration from:
;;;   https://bitbucket.org/Fuco/.emacs.d/.../files/yasnippet.el
;;; I don't know if this helps...
(defun kh/yas-startup ()
  (define-key yas-minor-mode-map [(tab)] nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil))

(add-hook 'yas-minor-mode-hook 'kh/yas-startup)


(provide 'conf-yasnippet)
