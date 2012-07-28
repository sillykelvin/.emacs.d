;---------------------------------------------------------------------------------
; ******* ibuffer config *******
;        Author:  Kelvin Hu
;       Created:  07/29/2012
; Last Modified:  07/29/2012
;---------------------------------------------------------------------------------

(eval-after-load 'ibuffer
  '(progn
     ;; Use human readable Size column instead of original one
     (define-ibuffer-column size-h
       (:name "Size" :inline t)
       (cond
        ((> (buffer-size) 1000000) (format "%7.1fM" (/ (buffer-size) 1000000.0)))
        ((> (buffer-size) 1000) (format "%7.1fk" (/ (buffer-size) 1000.0)))
        (t (format "%8d" (buffer-size)))))))

(global-set-key (kbd "C-x C-b") 'ibuffer)


(provide 'conf-ibuffer)
