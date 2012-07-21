;---------------------------------------------------------------------------------
; ******* some common utility definitions *******
;        Author:  Kelvin Hu
;       Created:  06/16/2012
; Last Modified:  06/30/2012
;---------------------------------------------------------------------------------


(defconst is-version-after-24 (>= emacs-major-version 24)
  "to judge whether the major emacs version is bigger than or equal to 24")

(defconst is-os-windows (string-equal system-type "windows-nt")
  "non-nil means it is windows operating system")

(defconst is-os-mac (string-equal system-type "darwin")
  "non-nil means it is mac operating system")


(provide 'util-common)
