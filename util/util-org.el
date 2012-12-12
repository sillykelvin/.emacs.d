;---------------------------------------------------------------------------------
; ******* some utility definitions for org mode *******
;        Author:  Kelvin Hu
;       Created:  11/30/2012
; Last Modified:  11/30/2012
;---------------------------------------------------------------------------------

(defun kh/org-insert-export-options-template ()
  "Insert a template with information for exporting into current buffer. Based
on org-insert-export-options-template, but modified several fields."
  (interactive)
  (if (not (bolp)) (newline))
  (insert (format
           "#+TITLE:       %s
#+AUTHOR:      %s
#+EMAIL:       %s
#+DATE:        %s
#+KEYWORDS:    
#+CATEGORY:    
#+TAGS:        
#+LANGUAGE:    %s
#+OPTIONS:     H:%d num:%s toc:%s \\n:%s @:%s ::%s |:%s ^:%s -:%s f:%s *:%s <:%s
#+DESCRIPTION: 
"
           (buffer-name) (user-full-name) user-mail-address
           (format-time-string (substring (car org-time-stamp-formats) 1 -1))
           org-export-default-language
           org-export-headline-levels
           nil ;org-export-with-section-numbers
           nil ;org-export-with-toc
           org-export-preserve-breaks
           org-export-html-expand
           org-export-with-fixed-width
           org-export-with-tables
           nil ;org-export-with-sub-superscripts
           org-export-with-special-strings
           org-export-with-footnotes
           org-export-with-emphasize
           org-export-with-timestamps)))


(provide 'util-org)
