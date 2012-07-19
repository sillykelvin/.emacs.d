;---------------------------------------------------------------------------------
; ******* some utility definitions for editing *******
;        Author:  Kelvin Hu
;       Created:  06/28/2012
; Last Modified:  07/20/2012
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

(defun smart-beginning-of-line()
  "the smart version of function `beginning-of-line'"
  (interactive)
  (if (eq (line-beginning-position) (point))
      (skip-chars-forward " \t")
    (beginning-of-line)))

(defun smart-end-of-line()
  "the smart version of function `end-of-line'"
  (interactive)
  (if (eq (line-end-position) (point))
        (skip-chars-backward " \t")
    (end-of-line)))


(provide 'util-editing)
