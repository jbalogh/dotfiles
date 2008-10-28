;;; -*- Mode: Emacs-Lisp -*-
;;; Lisp-related configuration
;;;

(eval-when-compile
  (require 'cl))

(require 'slime)
(require 'pair-mode)
(require 'mic-paren)
(require 'paredit)
(require 'parenface)

(slime-setup :autodoc t)

(setq inferior-lisp-program "/usr/bin/sbcl"
      lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol
      slime-startup-animation t
      slime-enable-evaluate-in-emacs t
      slime-log-events t
      slime-outline-mode-in-events-buffer t
      slime-repl-return-behaviour :send-only-if-after-complete
      slime-autodoc-use-multiline-p t
      slime-highlight-compiler-notes t
      slime-fuzzy-completion-in-place t)

(paren-activate)
(setf paren-priority 'close)

(define-key slime-mode-map (kbd "TAB")     'slime-indent-and-complete-symbol)
(define-key slime-mode-map (kbd "C-c TAB") 'slime-complete-form)


(defmacro defslime-start (name lisp)
  `(defun ,name ()
     (interactive)
     (slime-start :program ,lisp)))

(defslime-start clisp "/usr/bin/clisp")
(defslime-start sbcl "/usr/bin/sbcl")

(setf slime-save-buffers nil)

(defvar slime-auto-compile-timer nil)

(defun slime-enable-auto-compile ()
  (setf slime-auto-compile-timer
        (run-with-idle-timer 3 t `(lambda ()
                                    (when (and slime-mode
                                               (slime-sexp-at-point)
                                               (slime-connected-p))
                                      (slime-compile-defun))))))

(defun slime-disable-auto-compile ()
  (cancel-timer slime-auto-compile-timer))

(setf slime-display-edit-hilights nil)
