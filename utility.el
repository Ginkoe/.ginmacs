(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (setq projectile-project-search-path '("~/code"))
  (setq projectile-switch-project-action #'projectile-dired)
  )


(use-package counsel-projectile
  :config (counsel-projectile-mode)
  )


(use-package magit
  :custom
  ;; Displays diff in same buffer
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
  )

(provide 'utility)
