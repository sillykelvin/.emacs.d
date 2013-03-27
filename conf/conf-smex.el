;---------------------------------------------------------------------------------
; ******* smex config *******
;        Author:  Kelvin Hu
;       Created:  03/26/2013
; Last Modified:  03/26/2013
;---------------------------------------------------------------------------------

(require 'smex)

(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(provide 'conf-smex)
