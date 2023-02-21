(defvar gink/default-font-size 120)
(defvar gink/default-variable-font-size 120)

(set-face-attribute 'default nil :font "Hurmit Nerd Font" :height gink/default-font-size)

(set-face-attribute 'fixed-pitch nil :font "Hurmit Nerd Font" :height gink/default-font-size)


(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))




;; visual clues line number 
(column-number-mode)
(global-display-line-numbers-mode t)
;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                treemacs-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; theme
(add-to-list 'custom-theme-load-path "~/.ginconfig/themes")
(load-theme 'catppuccin t)

(set-window-margins (selected-window) 1 1)


;; emacs size
(setq initial-frame-alist
      (append initial-frame-alist
              '((left   . 0)
                (top    . 0)
                (width  . 210)
                (height . 59))))


(provide 'rice)
