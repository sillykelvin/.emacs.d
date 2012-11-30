;---------------------------------------------------------------------------------
; ******* org config *******
;        Author:  Kelvin Hu
;       Created:  07/29/2012
; Last Modified:  11/30/2012
;---------------------------------------------------------------------------------


(require 'util-org)

(add-hook 'org-mode-hook
          (lambda ()
            (org-defkey org-mode-map "\C-ct" 'kh/org-insert-export-options-template)))

(add-hook 'org-mode-hook
          (lambda ()
            (setq truncate-lines t)))


(provide 'conf-org)
