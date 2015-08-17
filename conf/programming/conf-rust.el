;-------------------------------------------------------------------------------
; ******* rust mode config *******
;        Author:  Kelvin Hu
;       Created:  07/27/2015
; Last Modified:  07/27/2015
;-------------------------------------------------------------------------------

(require 'rust-mode)
(require 'racer)

(when is-os-windows
  (setq racer-rust-src-path "C:/SDTs/Rust/rustc-src/src/")
  (setq racer-cmd "C:/SDTs/Rust/bin/racer.exe"))

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook #'racer-activate)

(define-key rust-mode-map (kbd "TAB") #'racer-complete-or-indent)
(define-key rust-mode-map (kbd "M-.") #'racer-find-definition)


(provide 'conf-rust)
