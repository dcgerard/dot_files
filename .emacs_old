(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (misterioso)))
 '(ess-swv-processor (quote knitr))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; AucTex options --------------------------------------------------
(setq TeX-PDF-mode t)
(setq LaTeX-command-style '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)")))

;; ESS options ------------------------------------------------------
(setq ess-default-style 'C++)
(ess-toggle-underscore nil)

;; makes switching between buffers easy -----------------------------
(require 'ido)
(ido-mode t)

;; show column numbers -----------------------------------------------
(setq column-number-mode t)

;; faster window swapping --------------------------------------------
(global-set-key (kbd "M-[") 'previous-multiframe-window)
(global-set-key (kbd "M-]") 'next-multiframe-window)

;; better cursor color ------------------------------------------------
(set-cursor-color "#ff0000")

;; Enable MELPA repo ---------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;;; MARKDOWN -----------------------------------------------------------
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;; R modes -------------------------------------------------------------
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; elpy -----------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)
(elpy-enable)
(elpy-use-ipython)
(setq elpy-rpc-python-command "python3")


;; auctex autocomplete -----------------------------------------------
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

 (defun ac-LaTeX-mode-setup () ; add ac-sources to default ac-sources
   (setq ac-sources
         (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
                 ac-sources))
   )
(add-hook 'LaTeX-mode-hook 'ac-LaTeX-mode-setup)
(global-auto-complete-mode t)

(setq ac-math-unicode-in-math-p t)

(require 'auto-complete-auctex)


;; flycheck for r syntax correction integration with lintr
;; (add-hook 'after-init-hook #'global-flycheck-mode)
;; (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
;; (setq-default flycheck-flake8-maximum-line-length 100)
