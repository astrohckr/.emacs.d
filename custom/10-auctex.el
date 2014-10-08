;; AucTeX
(require 'tex-site)

;; You need to install these packages on Ubuntu/Debian:
;; apt-get install auctex latexmk texlive-fonts-extra texlive-latex-extra

;; Config
;; From http://www.stefanom.org/setting-up-a-nice-auctex-environment-on-mac-os-x/
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq-default TeX-master nil) ; Query for master file.
(setq TeX-PDF-mode t)

;; Use zathura as viewer, enable source <-> PDF sync
;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc (see below)
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

;; "zathura -s -x \" emacsclient --no-wait + %% {line} %% {input} \ "% s.pdf
;; "zathura --synctex-forward %n:0:%b %s.pdf"

(setq TeX-view-program-list '(("zathura" "zathura --fork -s -x emacsclient %o -P %(outpage)")))
(setq TeX-view-program-selection '((output-pdf "zathura")))
