;-------------------------------------------------------------------------------
; ******* cc mode config *******
;        Author:  Kelvin Hu
;       Created:  03/28/2013
; Last Modified:  06/05/2013
;-------------------------------------------------------------------------------

;; this statement must be put before the next require statement, otherwise the
;; program clang.exe will not be found while doing auto completion.
(when is-os-windows
  (setq exec-path (cons (expand-file-name "D:/SDTs/Clang/") exec-path)))

(require 'auto-complete-clang)

;; tell emacs to open .h file in c++ mode, default is c mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(setq ac-clang-flags
      (if is-os-windows
          (list "-ID:/SDTs/MinGW/include/"
                "-ID:/SDTs/MinGW/lib/gcc/mingw32/4.7.2/include/"
                "-ID:/SDTs/MinGW/lib/gcc/mingw32/4.7.2/include/c++/"
                "-ID:/SDTs/MinGW/lib/gcc/mingw32/4.7.2/include/c++/mingw32/"
                "-D__MSVCRT__")
        (list "-I/usr/include/c++/4.7.2/"
              "-I/usr/include/"
              "-I/usr/include/c++/4.7.2/x86_64-unknown-linux-gnu/")))

(defun kh/ac-cc-mode-setup ()
  "This function is an extended version of `ac-cc-mode-setup'."
  ;; (make-local-variable 'ac-auto-start)
  ;; (setq ac-auto-start nil)

  ;;; DO NOT use ac-source-clang, it is really really really CPU sensitive
  ;;;(setq ac-sources (append '(ac-source-yasnippet ac-source-clang) ac-sources))
  (setq ac-sources (append '(ac-source-yasnippet) ac-sources))

  (setq c-basic-offset 4)
  (setq c-indent-level 4)
  (setq indent-tabs-mode nil)
  ;; minor modes
  (ggtags-mode t)
  (which-function-mode t)
  (local-set-key (kbd "M-o") 'ff-find-other-file)
  ;; (auto-fill-mode 1)
  ;; (c-turn-on-eldoc-mode)
  ;; (gtags-mode 1)
  ;; (hs-minor-mode 1)
  ;; (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
  )
(add-hook 'c-mode-common-hook 'kh/ac-cc-mode-setup)
;(define-key ac-mode-map (kbd "M-/") 'auto-complete)


(provide 'conf-cc)
