;-------------------------------------------------------------------------------
; ******* Emacs main config file *******
;        Author:  Kelvin Hu
;       Created:  04/26/2012
; Last Modified:  01/20/2014
;-------------------------------------------------------------------------------

;; disable loading vc plugins, it will obviously slow down emacs booting
(setq vc-handled-backends nil)


(require 'server)
(unless (server-running-p)
  (server-start))


;;; remove the following path, it will cause warning info on Mac OS X
;; (add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/conf")
(add-to-list 'load-path "~/.emacs.d/util")


;; be sure the package dependency verification module is at the first step
(require 'conf-package)

(require 'conf-theme)

(require 'conf-misc)

(require 'conf-ido)

(require 'conf-smex)

;;; do not require tabbar anymore, I have never used it these days
;; (require 'conf-tabbar)

(require 'conf-editing)

(require 'conf-programming)

(require 'conf-auto-complete)

(require 'conf-markdown)

(require 'conf-ace-jump)

;;; now use smartparens instead of autopair
;; (require 'conf-autopair)
(require 'conf-smartparens)

(require 'conf-org)

(require 'conf-org-page)

(require 'conf-ibuffer)

(require 'conf-yasnippet)

(require 'conf-flyspell)

(require 'conf-encoding)

(require 'conf-undo-tree)

(require 'conf-highlight-symbol)

;(require 'conf-cedet)

;(require 'conf-jdee)


;;; ===================== read desktop at the last step =====================
(require 'conf-desktop)
