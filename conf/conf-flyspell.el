;---------------------------------------------------------------------------------
; ******* flyspell config *******
;        Author:  Kelvin Hu
;       Created:  08/15/2012
; Last Modified:  08/16/2012
;---------------------------------------------------------------------------------


(if is-os-windows
    (progn
      (setq-default ispell-program-name "aspell")
      (ispell-change-dictionary "american" t)))

(add-hook 'text-mode-hook (lambda () (flyspell-mode t)))

(dolist (hook '(;lisp-mode-hook
                emacs-lisp-mode-hook
                java-mode-hook
                javascript-mode-hook
                python-mode-hook
                nxml-mode-hook))
  (add-hook hook 'flyspell-prog-mode))

(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-<f8>") 'flyspell-buffer)
;(global-set-key (kbd "M-<f8>") 'flyspell-check-previous-highlighted-word)

;;; configuration below is copied from Purcell's configuration, no idea what it is used for...
;(add-hook 'nxml-mode-hook (lambda ()
;                            (add-to-list 'flyspell-prog-text-faces 'nxml-text-face)))

;;; the line below is to make flyspell stays in harmony with auto-complete,
;;; according to http://cx4a.org/software/auto-complete/manual.html#Known_Bugs
(ac-flyspell-workaround)


(provide 'conf-flyspell)
