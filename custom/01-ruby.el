(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

;; Set rbenv
(setenv "PATH"
        (concat (getenv "HOME") "/.rbenv/shims:"
                (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))

(setq exec-path
      (cons (concat (getenv "HOME") "/.rbenv/shims")
            (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))
