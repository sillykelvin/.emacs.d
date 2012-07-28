;---------------------------------------------------------------------------------
; ******* desktop config *******
;        Author:  Kelvin Hu
;       Created:  07/27/2012
; Last Modified:  07/28/2012
;---------------------------------------------------------------------------------

;;; the locations used to read desktop file
(setq desktop-path '("~/.emacs.d/"))
;;; the location used to write desktop file
(setq desktop-dirname "~/.emacs.d/")

(setq desktop-base-file-name ".emacs.desktop")


(desktop-save-mode t)

(dolist (var (list 'command-history
                   'kill-ring
                   'file-name-history
                   'extended-command-history))
  (add-to-list 'desktop-globals-to-save var))


(dolist (var (list 'dired-mode
                   'Info-mode
                   'help-mode))
  (add-to-list 'desktop-modes-not-to-save var))

;(setq desktop-buffers-not-to-save "\\.log")
(setq desktop-files-not-to-save "\\.log$")


(provide 'conf-desktop)
