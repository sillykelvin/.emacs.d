;-------------------------------------------------------------------------------
; ******* Emacs main config file *******
;        Author:  Kelvin Hu
;       Created:  04/26/2012
; Last Modified:  02/25/2014
;-------------------------------------------------------------------------------

;; disable loading vc plugins, it will obviously slow down emacs booting
(setq vc-handled-backends nil)

(require 'server)
;; fix directory unsafe error
(when (and (>= emacs-major-version 23)
           (equal window-system 'w32))
  (defun server-ensure-safe-dir (dir) "Noop" t))
(unless (server-running-p)
  (server-start))

;;; remove the following path, it will cause warning info on Mac OS X
;; (add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/conf")
(add-to-list 'load-path "~/.emacs.d/util")

;; set the proxy server if it is an office machine, as all traffic without proxy
;; will be blocked, so emacs package update will always fail
(require 'util-common)
(if is-os-windows
    ;; (setq url-proxy-services '(("http" . "10.64.1.186:8080"))))
    (setq url-proxy-services '(("http" . "web-proxy.oa.com:8080"))))

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
