;---------------------------------------------------------------------------------
; ******* Emacs main config file *******
;        Author:  Kelvin Hu
;       Created:  04/26/2012
; Last Modified:  03/25/2013
;---------------------------------------------------------------------------------

;;; this is no longer needed, because we have set the environment variable HOME pointing to this directory
;(if (string-equal system-type "windows-nt") (setenv "HOME" "D:/Dev-Support/Emacs-Config/"))

;; disable loading vc plugins, it will obviously slow down emacs booting
(setq vc-handled-backends ())

;; use package.el to manage packages rather than manual efforts
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'server)
(unless (server-running-p)
  (server-start))

;---------------------------------------------------------------------------------
; load the initial config
;---------------------------------------------------------------------------------
;;; the ~ folder has been set to this directory according to the HOME environment variable
(add-to-list 'load-path "~/.emacs.d")
;(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/lib")
(add-to-list 'load-path "~/.emacs.d/conf")
(add-to-list 'load-path "~/.emacs.d/util")


(require 'conf-theme)

(require 'conf-misc)

(require 'conf-ido)

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
