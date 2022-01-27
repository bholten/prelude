;; Basic themes

(prelude-require-package 'kaolin-themes)
(prelude-require-package 'clj-refactor)
(prelude-require-package 'zig-mode)
(prelude-require-package 'lsp-mode)
(prelude-require-package 'ccls)
(prelude-require-package 'docker)

(setq ccls-executable "/usr/local/bin/ccls")

(defun disable-guru-mode ()
  (guru-mode -1))

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(setq lsp-haskell-server-path "$HOME/.ghcup/bin/haskell-language-server-wrapper")
