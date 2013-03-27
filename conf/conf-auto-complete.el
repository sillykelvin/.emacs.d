;---------------------------------------------------------------------------------
; ******* auto complete config *******
;        Author:  Kelvin Hu
;       Created:  06/16/2012
; Last Modified:  03/27/2013
;---------------------------------------------------------------------------------

(require 'auto-complete-config)

(global-auto-complete-mode t)

;; configuration below is not needed, auto-complete will add this itself
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20130324.1306/dict")

(setq ac-auto-show-menu t
      ;; fix issue https://github.com/m2ym/auto-complete/issues/127
      ;; if set ac-auto-start to t, it will take long time to response while inserting ' / ; / <space> before a string under lisp interaction mode
      ;; so set it to 2 instead (according to the author's comment)
      ac-auto-start 2 ;t
      ac-dwim t
      ;ac-candidate-limit ac-menu-height
      ac-quick-help-delay 0.5
      ac-disable-faces nil)

(setq ac-ignore-case 'smart)

(setq-default ac-sources
              '(ac-source-yasnippet
                ac-source-dictionary
                ac-source-abbrev
                ac-source-features
                ac-source-functions
                ac-source-symbols
                ac-source-variables
                ac-source-words-in-buffer
                ac-source-words-in-same-mode-buffers
                ac-source-imenu
                ac-source-files-in-current-dir
                ac-source-filename))

;(define-key ac-completing-map (kbd "C-n") 'ac-next)
;(define-key ac-completing-map (kbd "C-p") 'ac-previous)
;;; do not use the above config, it is "bad" config according to auto-complete author
;;; use the following instead
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)


(provide 'conf-auto-complete)
