(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0f76f9e0af168197f4798aba5c5ef18e07c926f4e7676b95f2a13771355ce850" default))
 '(package-selected-packages '(ess poly-R polymode modus-themes auctex-latexmk auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; melpa package manager
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; tex stuff
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)
(require 'auctex-latexmk)
(auctex-latexmk-setup)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)

;; remove spash screen
(setq inhibit-splash-screen t)

;; 80 character colum
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
(setopt display-fill-column-indicator-column 80)

;; show column number
(setq column-number-mode t)

;; makes switching between buffers easy -----------------------------
(require 'ido)
(ido-mode t)

;; modus theme
(set-face-attribute 'default (selected-frame) :height 150)
(load-theme 'modus-vivendi)

;; spell check
(setq ispell-program-name "/opt/homebrew/bin/aspell")

;; delete useless white space add new line on save
(add-hook 'write-file-hooks 'delete-trailing-whitespace)
(setq mode-require-final-newline t)
