;; In Aquamacs, this goes in ~/Library/Preferences/Aquamacs Emacs/Preferences.el.

(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'textmate)
(require 'peepopen)
(textmate-mode)

;; For Emacs 23 or Aquamacs, use this to open files in the existing frame:
;;
(setq ns-pop-up-frames nil)
