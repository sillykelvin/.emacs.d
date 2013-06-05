;---------------------------------------------------------------------------------
; ******* some utility definitions for editing *******
;        Author:  Kelvin Hu
;       Created:  06/28/2012
; Last Modified:  06/05/2013
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

(defun smart-toggle-comment (beg end &optional arg)
  (interactive "*r\nP")
  (unless (region-active-p)
    (setq beg (line-beginning-position)
          end (line-end-position)))
  (comment-or-uncomment-region beg end arg))

(defun switch-to-scratch ()
  "Switch to *scratch* buffer."
  (interactive)
  (let ((buffer (get-buffer-create "*scratch*")))
    (switch-to-buffer buffer)))


(provide 'util-editing)
