;---------------------------------------------------------------------------------
; ******* cedet config *******
;        Author:  Kelvin Hu
;       Created:  05/13/2012
; Last Modified:  06/02/2012
;---------------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/lib/cedet/common")
(add-to-list 'load-path "~/.emacs.d/lib/cedet/semantic")
(add-to-list 'load-path "~/.emacs.d/lib/cedet/eieio")
(add-to-list 'load-path "~/.emacs.d/lib/cedet/speedbar")

(load-file "~/.emacs.d/lib/cedet/common/cedet.el")

;;; enable EDE
(global-ede-mode t)

;;; enable some semantic tools
(semantic-load-enable-gaudy-code-helpers)

;;; set the JDK root
(setq cedet-java-jdk-root "C:/SDTs/JDK")

(setq semanticdb-javap-classpath '("C:/SDTs/JDK/jre/lib/rt.jar"))

(add-hook 'java-mode-hook
    '(lambda ()
       (semantic-add-system-include "D:/Code Labs/WFRM/src/UI3/WebUI/src" 'java-mode)))



;;; enable SRecode minor mode
;(global-srecode-minor-mode t)


(provide 'conf-cedet)