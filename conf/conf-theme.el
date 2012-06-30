;---------------------------------------------------------------------------------
; ******* theme config *******
;        Author:  Kelvin Hu
;       Created:  05/07/2012
; Last Modified:  06/30/2012
;---------------------------------------------------------------------------------

;---------------------------------------------------------------------------------
; color theme config
;---------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/lib/color-theme")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/solarized")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/molokai")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/sanityinc-solarized")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/tomorrow")

;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-arjen)

;(require 'color-theme-molokai)
;(color-theme-molokai)

;(require 'color-theme-solarized)
;(color-theme-solarized 'dark)

;(require 'color-theme-sanityinc-solarized)
;(color-theme-sanityinc-solarized 'dark)
(require 'color-theme-tomorrow)
(color-theme-tomorrow-real 'night)


(provide 'conf-theme)
