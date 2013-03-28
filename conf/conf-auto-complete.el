;-------------------------------------------------------------------------------
; ******* auto complete config *******
;        Author:  Kelvin Hu
;       Created:  06/16/2012
; Last Modified:  03/28/2013
;-------------------------------------------------------------------------------

(require 'auto-complete-config)

(defun kh/ac-config-default ()
  "This function is a modified version of `ac-config-default'."
  (setq-default ac-sources '(ac-source-abbrev
                             ac-source-dictionary
                             ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;;; HACK: do not hook this for cc mode
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(kh/ac-config-default)

;; configuration below is not needed, auto-complete will add this itself
;; (add-to-list 'ac-dictionary-directories
;;              "~/.emacs.d/elpa/auto-complete-20130324.1306/dict")

(setq ac-auto-show-menu t
      ac-quick-help-prefer-pos-tip t
      ;; fix issue https://github.com/m2ym/auto-complete/issues/127
      ;; if ac-auto-start is set to t, it will take long time to response while
      ;; inserting ' / ; / <space> before a string under lisp interaction mode
      ;; so set it to 2 instead (according to the author's comment)
      ac-auto-start 2 ;t
      ac-dwim t
      ;ac-candidate-limit ac-menu-height
      ac-use-quick-help t
      ac-quick-help-delay 0.5
      ac-fuzzy-enable t
      ;; ac-disable-faces nil
      ac-ignore-case 'smart)

;; (setq-default ac-sources
;;               '(ac-source-yasnippet
;;                 ac-source-dictionary
;;                 ac-source-abbrev
;;                 ac-source-features
;;                 ac-source-functions
;;                 ac-source-symbols
;;                 ac-source-variables
;;                 ;; ac-source-words-in-buffer
;;                 ac-source-words-in-same-mode-buffers
;;                 ac-source-imenu
;;                 ac-source-files-in-current-dir
;;                 ac-source-filename))

(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)


(provide 'conf-auto-complete)
