;---------------------------------------------------------------------------------
; ******* config for more comfortable editing *******
;        Author:  Kelvin Hu
;       Created:  05/12/2012
; Last Modified:  06/05/2013
;---------------------------------------------------------------------------------

(require 'util-editing)

;;; move mouse away when cursor moves close to mouse
(mouse-avoidance-mode 'animate)

;;; enlarge the kill ring
(setq kill-ring-max 100)

;;; press <DEL> will delete the region
(delete-selection-mode t)

;;; use clipboard to cut and paste
(setq x-select-enable-clipboard t)


;;; insert spaces instead of tabs, and each tab will
;;; be inserted with 4 spaces instead
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
;(setq-default indent-line-function 'insert-tab)

;;; show white spaces
(global-whitespace-mode t)
;(setq whitespace-style '(face space tabs trailing lines-tail newline empty tab-mark newline-mark space-mark)
;(setq whitespace-style '(face space tabs trailing lines-tail empty tab-mark space-mark))
(setq whitespace-style '(face tabs trailing tab-mark))
(setq whitespace-display-mappings
      '((space-mark 32 [32] [183] [46])     ; modified, do not show dot
        (space-mark 160 [164] [95])
        (space-mark 2208 [2212] [95])
        (space-mark 2336 [2340] [95])
        (space-mark 3616 [3620] [95])
        (space-mark 3872 [3876] [95])
        (newline-mark 10 [182 10] [36 10])  ; modified, show another character instead $
        (tab-mark 9 [187 9] [92 9])))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  ;;'(whitespace-indentation ((t (:foreground "#073642"))))
  '(whitespace-tab ((t (:background "#073642" :foreground "#a07f41"))))
  '(whitespace-trailing ((t (:background "#073642" :foreground "#a07f41")))))

;;; auto indent after a new line
(global-set-key (kbd "RET") 'newline-and-indent)

;;; redefined the key bindings "C-a" and "C-e"
(global-set-key (kbd "C-a") 'smart-beginning-of-line)
(global-set-key (kbd "C-e") 'smart-end-of-line)

;;; set the comment style to multi-line
(setq comment-style 'multi-line)
;;; define the smart comment/uncomment key binding
(define-key (current-global-map) (kbd "C-x C-/") 'smart-toggle-comment)

(global-set-key (kbd "C-x C-j") 'join-line)
(global-set-key (kbd "C-c s") 'switch-to-scratch)


(provide 'conf-editing)
