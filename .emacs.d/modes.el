;;;
;;; Python
;;;

(defun load-ropemacs ()
  "Load pymacs and ropemacs"
  (interactive)
  (pymacs-load "ropemacs" "rope-"))

(require 'pymacs)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

(autoload 'python-mode "python-mode" "Python mode." t)

(defun insert-above (line)
  (progn
    (my-viper-open-new-line-above)
    (indent-for-tab-command)
    (insert line)
    (viper-change-state-to-vi)))

(defun run-with-compile (cmd)
  (compile (format cmd (if (null current-prefix-arg)
						   (buffer-file-name)
						 (file-name-directory buffer-file-name)))))

(defun pyflakes ()
  (interactive)
  (run-with-compile "pyflakes %s"))

(defun nose ()
  (interactive)
  (run-with-compile "nosetests --machine-output %s"))

(defun python-insert-pdb ()
  (interactive)
  (insert-above "import pdb; pdb.set_trace()"))

(add-hook 'python-mode-hook
	  (lambda ()
        (local-set-key [(f6)] 'nose)
	    (local-set-key [(f7)] 'pyflakes)
	    (local-set-key [(f8)] 'python-insert-pdb)
        (dolist (x '(insert-state emacs-state vi-state))
          (viper-add-local-keys x '(([backspace] . py-electric-backspace))))))

(autoload 'doctest-mode "doctest-mode" "Doctests." t)
(add-hook 'doctest-mode-hook
      (lambda ()
        (viper-add-local-keys 'insert-state
            '(([backspace] . doctest-electric-backspace)))))

(defadvice doctest-execute (before save-before-doctest)
  (save-buffer))
(ad-activate 'doctest-execute)

;;;
;;; Python
;;;
;;; Javascript
;;;

(autoload 'js2-mode "js2" "Javascript mode" t)

;;;
;;; Javascript
;;;
;;; Scheme
;;;

(setq scheme-program-name "mzscheme")
(add-hook 'scheme-mode-hook
          (lambda ()
            (require 'quack)
	    (viper-add-local-keys 'insert-state
	      '(("\M-[" . (lambda ()
                        (interactive)
                        (quack-insert-opening t ?\[)))
	        ("(" . quack-insert-opening-paren)
            ("[" . quack-insert-opening-bracket)
            (")" . quack-insert-closing-paren)
            ("]" . quack-insert-closing-bracket)))))


;;;
;;; Scheme
;;;
;;; Haskell
;;;

(load "~/.emacs.d/site/haskell-mode/haskell-site-file")

;;;
;;; Haskell
;;;
;;; Lisp
;;;

(setq inferior-lisp-program "/usr/bin/sbcl")
(autoload 'slime "slime" "Slime mode" t)

(add-hook 'slime-mode-hook
          (lambda()
            (slime-setup)
            (unless (slime-connected-p)
              (save-excursion (slime)))))


(add-hook 'slime-repl-mode-hook
          (lambda ()
            (local-set-key (kbd "C-p") 'slime-repl-previous-input)
            (local-set-key (kbd "C-n") 'slime-repl-next-input)))
;;;
;;; Lisp
;;;
;;; Django
;;;
(autoload 'django-html-mode "django-html-mode.el"
          "Major mode for editing django templates" t)

;;;
;;; Django
;;;
;;; nxml, mumamo

(load "nxhtml/autostart.el")

;;;
;;; nxml
;;;

(autoload 'markdown-mode "markdown-mode.el"
          "Major mode for editing Markdown files" t)

(setq auto-mode-alist
      (append '(("\\.js$"     . js2-mode)
                ("\\.json$"   . js2-mode)
                ("\\.py$"     . python-mode)
                ("\\.djhtml$" . django-html-mode)
                ("\\.doctest$". doctest-mode)
                ("\\.thtml$"  . php-mode)
                )
              auto-mode-alist))

(provide 'modes)
