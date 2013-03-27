;-------------------------------------------------------------------------------
; ******* Emacs main config file *******
;        Author:  Kelvin Hu
;       Created:  04/26/2012
; Last Modified:  03/27/2013
;-------------------------------------------------------------------------------

;; disable loading vc plugins, it will obviously slow down emacs booting
(setq vc-handled-backends nil)

;; use package.el to manage packages rather than manual efforts
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'server)
(unless (server-running-p)
  (server-start))


(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/conf")
(add-to-list 'load-path "~/.emacs.d/util")


(require 'conf-theme)

(require 'conf-misc)

(require 'conf-ido)

(require 'conf-smex)

(require 'conf-tabbar)

(require 'conf-editing)

(require 'conf-programming)

(require 'conf-auto-complete)

(require 'conf-markdown)

(require 'conf-ace-jump)

(require 'conf-autopair)

(require 'conf-org)

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
