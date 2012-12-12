;---------------------------------------------------------------------------------
; ******* some common utility definitions *******
;        Author:  Kelvin Hu
;       Created:  06/16/2012
; Last Modified:  12/12/2012
;---------------------------------------------------------------------------------

(defconst is-version-after-24 (>= emacs-major-version 24)
  "to judge whether the major emacs version is bigger than or equal to 24")

(defconst is-os-windows (string-equal system-type "windows-nt")
  "non-nil means it is windows operating system")

(defconst is-os-mac (string-equal system-type "darwin")
  "non-nil means it is mac operating system")


(defun font-exists-p (font-name)
  "To check if a font exists on current system"
  (if (find-font (font-spec :name font-name)) t nil))

(defun font-candidate (&rest fonts)
  "Return the font exists on current system and first match in the list."
  (find-if 'font-exists-p fonts))

(defun kh/add-hook (hooks funcs &optional append local)
  "More general definition of function add-hook."
  (unless (listp hooks)
    (setq hooks (list hooks)))
  (unless (listp funcs)
    (setq funcs (list funcs)))
  (dolist (hook hooks)
    (dolist (func funcs)
      (add-hook hook func append local))))


(provide 'util-common)
