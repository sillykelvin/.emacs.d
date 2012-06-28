;---------------------------------------------------------------------------------
; ******* some utility definitions for editing *******
;        Author:  Kelvin Hu
;       Created:  06/28/2012
; Last Modified:  06/28/2012
;---------------------------------------------------------------------------------

;;; convert tab to spaces
(defun convert-tab-to-spaces ()
  "this function will convert all tabs into spaces in current buffer, how many spaces a tab will be converted into depends on variable `tab-width'"
  (interactive)
  (untabify (point-min) (point-max))
  (message "all tabs converted into spaces successfully"))

(defun format-buffer ()
  "this function is used to format current buffer"
  (interactive)
  (indent-region (point-min) (point-max))
  (message "current buffer formatted successfully"))
;(global-set-key (kbd "<f7>") 'convert-tab-to-spaces)


(provide 'util-editing)
