;-------------------------------------------------------------------------------
; ******* package management config *******
;        Author:  Kelvin Hu
;       Created:  07/07/2013
; Last Modified:  08/24/2013
;-------------------------------------------------------------------------------

;; use package.el to manage packages rather than manual efforts
(require 'package)

(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("SC" . "http://joseito.republika.pl/sunrise-commander/") t)


(defvar kh/depended-packages
  '(ace-jump-mode
    auto-complete
    auto-complete-clang
    color-theme
    color-theme-sanityinc-solarized
    color-theme-sanityinc-tomorrow
    elisp-slime-nav
    evil
    fill-column-indicator
    ggtags
    highlight-symbol
    markdown-mode
    mustache
    org
    org-page
    smartparens
    smex
    tabbar
    undo-tree
    yasnippet
    xmlgen)
  "Packages depended by my emacs configuration.")

(defun kh/get-uninstalled-packages ()
  (let (ret)
    (dolist (p kh/depended-packages)
      (when (not (package-installed-p p))
        (add-to-list 'ret p)))
    ret))

(defun kh/install-packages ()
  (let ((u-packs (kh/get-uninstalled-packages)))
    (if (not u-packs)
        (message "All required packages are installed.")
      (progn
        (message "Retrieving latest packages...")
        (package-refresh-contents)
        (message "Done.")
        (dolist (p u-packs)
          (message "Install package: %s" (symbol-name p))
          (package-install p))))))

(kh/install-packages)


(provide 'conf-package)
