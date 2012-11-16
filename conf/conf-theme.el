;---------------------------------------------------------------------------------
; ******* theme config *******
;        Author:  Kelvin Hu
;       Created:  05/07/2012
; Last Modified:  11/17/2012
;---------------------------------------------------------------------------------

(require 'util-common)

;---------------------------------------------------------------------------------
; color theme config
;---------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/lib/color-theme")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/molokai")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/solarized")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/sanityinc-solarized")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/tomorrow")
(add-to-list 'load-path "~/.emacs.d/lib/color-theme/sanityinc-tomorrow")

;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-arjen)

;(require 'color-theme-molokai)
;(color-theme-molokai)

(require 'color-theme-solarized)
(color-theme-solarized 'dark)

;(require 'color-theme-sanityinc-solarized)
;(color-theme-sanityinc-solarized 'dark)

;(require 'color-theme-tomorrow)
;(color-theme-tomorrow-real 'night)

;(require 'color-theme-sanityinc-tomorrow)
;(color-theme-sanityinc-tomorrow 'night)

;;; set default display font
(set-face-font 'default
               (font-candidate "Droid Sans Mono-10.5"
                               "WenQuanYi Micro Hei Mono-10.5"
                               "Consolas-10.5"
                               "Source Code Pro-10.5"))

;;; set special font for Chinese
(if (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-candidate "Microsoft Yahei-10.5"
                                        "WenQuanYi Micro Hei-10.5"))))


(provide 'conf-theme)
