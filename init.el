(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;; Paths
(add-to-list 'load-path "~/.emacs.d/custom")

(load "00-common-setup.el")
(load "00-ido.el")
(load "00-peepcode.el")
(load "01-ruby.el")
(load "01-rspec.el")
(load "01-rbenv.el")
(load "02-smartparens.el")
(load "03-fiplr.el")
(load "04-highlight-indentation.el")
(load "05-ag.el")
(load "06-coffee.el")
(load "07-markdown.el")
(load "08-haskell.el")
(load "09-magit.el")
(load "10-auctex.el")
(load "11-maxima.el")

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'lawrence t)

