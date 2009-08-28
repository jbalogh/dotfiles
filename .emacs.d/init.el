(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/site")
(add-to-list 'load-path "~/.emacs.d/site/textmate.el")
(require 'textmate)
(textmate-mode)

(show-paren-mode 1)

;; stdlib requires
(require 'ido)
(require 'uniquify)
(require 'saveplace)


;; site requires
(require 'vim)
(require 'blank-mode)
;(load "nxml/autostart.el")
(require 'php-mode)
(require 'mic-paren)
(paren-activate)

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/site/yas/snippets")


;; my requires
(require 'modes)
(require 'hide-backups)
(require 'keys)
(load-library "pastels-on-dark-theme")
(require 'key-chord)

;; key chords
(key-chord-mode 1)


;; hooks
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; misc
(fset 'yes-or-no-p 'y-or-n-p)

;; ignore active processes
(defadvice save-buffers-kill-emacs
  (around no-query-kill-emacs activate)
  (flet ((process-list ())) ad-do-it))

;; override "%s is checked in..."
(defun viper-maybe-checkout (buf) )

(which-func-mode)
(set-fringe-style 'minimal)

(require 'tramp)
(add-to-list 'tramp-remote-path "/home/jbalogh/bin")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(default-major-mode (quote markdown-mode))
 '(disabled-command-function nil t)
 '(doctest-python-command "/home/jeff/src/basie/bin/django")
 '(fill-column 80)
 '(font-lock-maximum-decoration t)
 '(frame-title-format (quote (buffer-file-name "emacs: %f" ("%b"))) t)
 '(fringe-style (quote minimal))
 '(global-font-lock-mode t)
 '(grep-command "ack --nocolor --nogroup ")
 '(grep-use-null-device nil)
 '(ido-mode t nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js2-cleanup-whitespace nil)
 '(js2-highlight-level 3)
 '(js2-indent-on-enter-key t)
 '(js2-mode-squeeze-spaces nil)
 '(menu-bar-mode nil)
 '(mumamo-chunk-coloring (quote submode-colored))
 '(quack-default-program "mzscheme -M errortrace")
 '(quack-fontify-style (quote emacs))
 '(quack-global-menu-p nil)
 '(quack-pretty-lambda-p t)
 '(quack-remap-find-file-bindings-p nil)
 '(quack-run-scheme-always-prompts-p nil)
 '(quack-run-scheme-prompt-defaults-to-last-p t)
 '(quack-smart-open-paren-p t)
 '(quack-tabs-are-evil-p t)
 '(safe-local-variable-values (quote ((delete-whitespace . t) (Package . LISP-UNIT))))
 '(save-place t nil (saveplace))
 '(save-place-file "~/.emacs.d/.emacs-places")
 '(scroll-bar-mode nil)
 '(search-highlight t)
 '(sgml-basic-offset 2)
 '(show-paren-mode t)
 '(show-trailing-whitespace nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(version-control nil)
 '(x-select-enable-clipboard t))

(set-fringe-style 'minimal)

(setq delete-whitespace nil)
(defun maybe-delete-trailing-whitespace ()
  (if delete-whitespace
      (delete-trailing-whitespace)))
(add-hook 'before-save-hook 'maybe-delete-trailing-whitespace)

(color-theme-pastels-on-dark)
