(prefer-coding-system 'utf-8)

(windmove-default-keybindings) 

;; Display continuous lines
(setq-default truncate-lines nil)
;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Set font
(set-default-font "InputMono Thin-14")

;; Display Options
(menu-bar-mode -1)
(tool-bar-mode -1)

;; trucate even even when screen is split into multiple windows
(setq-default truncate-partial-width-windows nil)

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p) 

;; Highlight incremental search
(setq search-highlight t)
(transient-mark-mode t)

;; Set the backup directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Disable flyspell
(flyspell-mode 0)

;; Show line numbers and set format
(global-linum-mode 1)
(setq linum-format "%4d   ")

;; Use command key as meta key (really only for GUI-mode)
;;(setq mac-option-key-is-meta nil)
;;(setq mac-command-key-is-meta t)
;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier nil)
