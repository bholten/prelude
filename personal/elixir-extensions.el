;;;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode.
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(add-hook 'elixir-format-hook
          (lambda ()
            (if (projectile-project-p)
                (setq elixir-format-arguments
                      (list "--dot-formatter"
                            (concat (locate-dominating-file buffer-file-name ".formatter.exs") ".formatter.exs")))
              (setq elixir-format-arguments nil))))

(add-to-list 'exec-path "/Users/bholten/els/elixir-ls")
