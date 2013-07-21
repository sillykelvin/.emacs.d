;-------------------------------------------------------------------------------
; ******* some utility definitions for lisp related programming *******
;        Author:  Kelvin Hu
;       Created:  07/21/2013
; Last Modified:  07/21/2013
;-------------------------------------------------------------------------------

(require 'cmuscheme)

(defun kh/get-scheme-proc-create ()
  "Create one scheme process if no one is created."
  (unless (and scheme-buffer
               (get-buffer scheme-buffer)
               (comint-check-proc scheme-buffer))
    (save-window-excursion
      (run-scheme scheme-program-name))))

(defun kh/scheme-send-last-sexp ()
  "A replacement of original `scheme-send-last-sexp':
1. check if scheme process exists, otherwise create one
2. make sure the frame is splitted into two windows, current one is the scheme
   source code window, the other one is the scheme process window
3. run `scheme-send-last-sexp'

PS: this function is inspired by Wang Yin."
  (interactive)
  (kh/get-scheme-proc-create)
  (cond ((= 2 (count-windows))
         (other-window 1)
         (unless (string= (buffer-name)
                          scheme-buffer)
           (switch-to-buffer scheme-buffer))
         (other-window 1))
        (t
         (delete-other-windows)
         (split-window-vertically (floor (* 0.68 (window-height))))
         (other-window 1)
         (switch-to-buffer scheme-buffer)
         (other-window 1)))
  (scheme-send-last-sexp))


(provide 'util-lisp)
