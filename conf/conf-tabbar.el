;---------------------------------------------------------------------------------
; ******* tabbar config *******
;        Author:  Kelvin Hu
;       Created:  05/08/2012
; Last Modified:  06/02/2012
;---------------------------------------------------------------------------------


(require 'tabbar)
(tabbar-mode t)

(setq tabbar-buffer-groups-function
    (lambda ()
        (list "All Buffers")))

(setq tabbar-buffer-list-function
    (lambda ()
        (remove-if
            (lambda (buffer)
	        (and (find (aref (buffer-name buffer) 0) " *")
                    (not (string-equal (buffer-name buffer) "*scratch*"))))
            (buffer-list))))


(global-set-key (kbd "C-<tab>") 'tabbar-forward-tab)
(global-set-key (kbd "C-S-<tab>") 'tabbar-backward-tab)


(provide 'conf-tabbar)
