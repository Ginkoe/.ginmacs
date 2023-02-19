(defvar gink/default-font-size 120)
(defvar gink/default-variable-font-size 120)

(set-face-attribute 'default nil :font "Hurmit Nerd Font" :height gink/default-font-size)

(set-face-attribute 'fixed-pitch nil :font "Hurmit Nerd Font" :height gink/default-font-size)


(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

;; theme
(add-to-list 'custom-theme-load-path "~/.ginconfig/themes")
(load-theme 'catppuccin t)

(provide 'rice)
