(require 'ox-publish)

(setq org-html-validation-link nil
      org-export-with-title t
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-export-with-sub-superscripts nil
      org-html-head "<link rel=\"stylesheet\" href=\"https://alazzza.github.io/assets/css/main.css\" />")

(setq org-publish-project-alist
      (list
       (list "alazzza"
             :recursive t
             :base-directory "./src"
             :publishing-function 'org-html-publish-to-html
             :publishing-directory "./public"
             :with-author nil
             :with-toc nil
             :section-numbers nil
             :time-stamp-file nil)))

(org-publish-all t)
