(setq viper-mode t)
(require 'viper)
(require 'vimpulse)
(require 'redo)

(setq viper-ex-style-editing nil)
(setq viper-emacs-state-mode-list
      (append viper-emacs-state-mode-list
	      '(inferior-scheme-mode
            inferior-haskell-mode
            inferior-shell-mode
    		inferior-python-mode)))

(provide 'vim)
