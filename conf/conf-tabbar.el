;---------------------------------------------------------------------------------
; ******* tabbar config *******
;        Author:  Kelvin Hu
;       Created:  05/08/2012
; Last Modified:  06/28/2012
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

;;; set default face: font, bg/fg color, size
(set-face-attribute 'tabbar-default nil
                    :family "微软雅黑"
                    ;:family "courier new"
                    :background "grey20"
                    :foreground "grey"
                    :height 0.9
                    )

;;; set button face: inherit from default face
(set-face-attribute 'tabbar-button nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "grey")
                    )

;;; set current selected tab face
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :foreground "grey40"
                    :background "lightgoldenrod"
                    :box '(:line-width 2 :color "darkgoldenrod")
                    ;:overline "black"
                    ;:underline "black"
                    :weight 'bold
                    )

;;; set unselected tab face
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "#grey30")
                    )

(global-set-key (kbd "C-<tab>") 'tabbar-forward-tab)
(global-set-key (kbd "C-S-<tab>") 'tabbar-backward-tab)


(provide 'conf-tabbar)
