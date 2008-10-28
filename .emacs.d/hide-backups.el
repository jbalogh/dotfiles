(defvar autosave-dir "~/.emacs.d/.autosaves/")
(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
	  (if buffer-file-name
	      (concat "#" (file-name-nondirectory buffer-file-name) "#")
	    (expand-file-name
	     (concat "#%" (buffer-name) "#")))))

(defvar backup-dir "~/.emacs.d/.backups/" "/")
(setq backup-directory-alist (list (cons "." backup-dir)))

(provide 'hide-backups)
