;-------------------------------------------------------------------------------
; ******* smartparens config *******
;        Author:  Kelvin Hu
;       Created:  08/19/2013
; Last Modified:  11/28/2013
;-------------------------------------------------------------------------------

(require 'smartparens-config)

(smartparens-global-mode t)

(show-smartparens-global-mode t)

;;; customization for c-mode and c++-mode, after a { is inputted, automatically
;;; create a newline and indent it
(defun kh/create-newline-and-enter-sexp (&rest _ignored)
  ;; (newline) ;; we need only one newline now
  (newline)
  (indent-according-to-mode)  ;; indent close brace
  (forward-line -1)           ;; go back
  (indent-according-to-mode)) ;; indent the empty line which is ready for code

(sp-with-modes '(c-mode c++-mode)
  ;;; the two lines below can only be triggered by <RET> pressed
  (sp-local-pair "{" nil
                 :post-handlers '((kh/create-newline-and-enter-sexp "RET")))
  ;;; the two lines below will automatically finish the work
  ;; (sp-local-pair "{" nil
  ;;                :post-handlers '(kh/create-newline-and-enter-sexp))
  )


;;; the following key bindings are copied from the example configuration of
;;; smartparens wiki:
;;;   https://github.com/Fuco1/smartparens/wiki/Example-configuration
;;; I did some customization based on it

(define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

;; (define-key sp-keymap (kbd "C-M-d") 'sp-down-sexp)
;; (define-key sp-keymap (kbd "C-M-a") 'sp-backward-down-sexp)
;; (define-key sp-keymap (kbd "C-S-a") 'sp-beginning-of-sexp)
;; (define-key sp-keymap (kbd "C-S-d") 'sp-end-of-sexp)

;; (define-key sp-keymap (kbd "C-M-e") 'sp-up-sexp)
;; (define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
;; (define-key sp-keymap (kbd "C-M-u") 'sp-backward-up-sexp)
;; (define-key sp-keymap (kbd "C-M-t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "C-M-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-M-p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)
(define-key sp-keymap (kbd "C-M-w") 'sp-copy-sexp)

;; (define-key sp-keymap (kbd "M-<delete>") 'sp-unwrap-sexp)
;; (define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

;; (define-key sp-keymap (kbd "C-<right>") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "C-x C-M-f") 'sp-forward-slurp-sexp)
;; (define-key sp-keymap (kbd "C-<left>") 'sp-forward-barf-sexp)
(define-key sp-keymap (kbd "C-x C-M-b") 'sp-forward-barf-sexp)
;; (define-key sp-keymap (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
;; (define-key sp-keymap (kbd "C-M-<right>") 'sp-backward-barf-sexp)

;; (define-key sp-keymap (kbd "M-D") 'sp-splice-sexp)
;; (define-key sp-keymap (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
;; (define-key sp-keymap (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
;; (define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

(define-key sp-keymap (kbd "C-]") 'sp-select-next-thing-exchange)
;; (define-key sp-keymap (kbd "C-<left_bracket>") 'sp-select-previous-thing)
(define-key sp-keymap (kbd "C-M-]") 'sp-select-next-thing)

;; (define-key sp-keymap (kbd "M-F") 'sp-forward-symbol)
;; (define-key sp-keymap (kbd "M-B") 'sp-backward-symbol)

;; (define-key sp-keymap (kbd "H-t") 'sp-prefix-tag-object)
;; (define-key sp-keymap (kbd "H-p") 'sp-prefix-pair-object)
;; (define-key sp-keymap (kbd "H-s c") 'sp-convolute-sexp)
;; (define-key sp-keymap (kbd "H-s a") 'sp-absorb-sexp)
;; (define-key sp-keymap (kbd "H-s e") 'sp-emit-sexp)
;; (define-key sp-keymap (kbd "H-s p") 'sp-add-to-previous-sexp)
;; (define-key sp-keymap (kbd "H-s n") 'sp-add-to-next-sexp)
;; (define-key sp-keymap (kbd "H-s j") 'sp-join-sexp)
;; (define-key sp-keymap (kbd "H-s s") 'sp-split-sexp)


(provide 'conf-smartparens)
