;-------------------------------------------------------------------------------
; ******* Emacs main config file *******
;        Author:  Kelvin Hu
;       Created:  04/26/2012
; Last Modified:  01/24/2015
;-------------------------------------------------------------------------------

(package-initialize)
(require 'ob-tangle)
(org-babel-load-file
 (expand-file-name "emacs-kh.org"
                   user-emacs-directory))
