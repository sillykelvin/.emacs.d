;---------------------------------------------------------------------------------
; ******* Emacs main config file *******
;        Author:  Kelvin Hu
;       Created:  04/26/2012
; Last Modified:  07/29/2012
;---------------------------------------------------------------------------------

;;; this is no longer needed, because we have set the environment variable HOME pointing to this directory
;(if (string-equal system-type "windows-nt") (setenv "HOME" "D:/Dev-Support/Emacs-Config/"))

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

;(require 'conf-cedet)

;(require 'conf-jdee)


;;; ===================== read desktop at the last step =====================
(require 'conf-desktop)
