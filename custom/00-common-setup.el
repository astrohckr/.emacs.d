(prefer-coding-system 'utf-8)

(windmove-default-keybindings) 

;; Display continuous lines
(setq-default truncate-lines nil)
;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Set font
(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-12"))
(set-default-font "Ubuntu Mono-12")

;; Display Options
;;(menu-bar-mode -1)
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
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; This uses the exec-path-from-shell to make sure that environment
;; variables are loaded within Emacs.app. 
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Initialize font-lock
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1)        ; GNU Emacs
  (setq font-lock-auto-fontify t))   ; XEmacs
