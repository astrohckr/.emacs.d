(global-set-key (kbd "C-x f") 'fiplr-find-file)

;; Ignore these files
(setq fiplr-ignored-globs '((directories (".git" ".svn" ".bundle" "vendor" "_site" "tags" "tmp"))
                            (files ("*.jpg" "*.png" "*.zip" "*~"))))

