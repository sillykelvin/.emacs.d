;-------------------------------------------------------------------------------
; ******* org-page config *******
;        Author:  Kelvin Hu
;       Created:  11/17/2013
; Last Modified:  11/27/2013
;-------------------------------------------------------------------------------

(require 'org-page)

(if is-os-windows
    (setq op/repository-directory "D:/CodeLabs/GitHub/kelvinh.github.com/")
  (setq op/repository-directory "~/devel/kelvinh.github.com/"))

(setq op/site-domain "http://kelvinh.github.io/")
(setq op/site-main-title "Kelvin的胡言乱语")
(setq op/site-sub-title "==============> 重剑无锋，大巧不工。")
(setq op/personal-github-link "https://github.com/kelvinh")
(setq op/personal-disqus-shortname "kelvinh")
(setq op/personal-google-analytics-id "UA-41088132-1")

(setq op/category-config-alist
      '(("blog" ;; this is the default configuration
         :show-meta t
         :show-comment t
         :uri-generator op/generate-uri
         :uri-template "/blog/%y/%m/%d/%t/"
         :sort-by :date     ;; how to sort the posts
         :category-index t) ;; generate category index or not
        ("wiki"
         :show-meta t
         :show-comment nil
         :uri-generator op/generate-uri
         :uri-template "/wiki/%t/"
         :sort-by :mod-date
         :category-index t)
        ("index"
         :show-meta nil
         :show-comment nil
         :uri-generator op/generate-uri
         :uri-template "/"
         :sort-by :date
         :category-index nil)
        ("about"
         :show-meta nil
         :show-comment nil
         :uri-generator op/generate-uri
         :uri-template "/about/"
         :sort-by :date
         :category-index nil)))


(provide 'conf-org-page)
