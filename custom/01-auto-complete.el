(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
                   "~/.emacs.d/.cask/24.3.1/elpa/auto-complete-20140414.2324/dict")
(ac-config-default)
(setq ac-ignore-case nil)

(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
