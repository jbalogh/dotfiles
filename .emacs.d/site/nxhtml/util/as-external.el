;;; as-external.el --- Emacs as an external editor to other apps
;;
;; Author: Lennart Borgman (lennart O borgman A gmail O com)
;; Created: Mon Jun 25 19:02:49 2007
(defconst as-external:version "0.6") ;;Version:
;; Last-Updated: 2008-09-30T11:44:43+0200 Tue
;; URL:
;; Keywords:
;; Compatibility:
;;
;; Features that might be required by this library:
;;
;;   `server'.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;  This little library should make it easier to use Emacs as an
;;  external editor in certain cases. One such case is when want to
;;  use Emacs as the external editor with the Firefox add-on "It's All
;;  Text".
;;
;;  See variable `as-external-mode' for more information.
;;
;;
;;; A note on the implementation:
;;
;; You may wonder why this does not use `auto-mode-alist' since it
;; checks the file name in nearly the same way? It is perhaps possible
;; to use that, but there are two things to be aware of:
;;
;; 1. The choice made must override other possible choices.
;;
;; 2. Beside the file name the implementation here also checks if the
;;    buffer has clients waiting. That makes the check more reliable.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change log:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'server)

(defgroup as-external nil
  "Settings related to Emacs as external editor."
  :group 'nxhtml
  :group 'external)

(defun as-external-its-all-text-default ()
  "Setup for Firefox addon It's All Text.
It's All Text is a Firefox add-on for editing textareas with an
external editor.
See URL `https://addons.mozilla.org/en-US/firefox/addon/4125'.

In this case Emacs is used to edit textarea fields on a web page.
The text will most often be part of a web page later, like on a
blog.  Therefore turn on these:

- `nxhtml-mumamo-mode' since some XHTML tags may be allowed.
- `nxhtml-validation-header-mode' since it is not a full page.
- `wrap-to-fill-column-mode' to see what you are writing.
- `html-write-mode' to see it even better.

Also bypass the question for line end conversion when using
emacsw32-eol."
  (if (not (fboundp 'nxhtml-mumamo-mode))
      (as-external-fall-back "Can't find nXhtml")
    (nxhtml-mumamo-mode)
    (nxhtml-validation-header-mode 1)
    (mumamo-post-command)
    (set (make-local-variable 'wrap-to-fill-left-marg-modes)
         '(nxhtml-mode fundamental-mode))
    (wrap-to-fill-column-mode 1)
    ;;(visible-point-mode 1)
    (html-write-mode 1)
    (when (boundp 'emacsw32-eol-ask-before-save)
      (make-local-variable 'emacsw32-eol-ask-before-save)
      (setq emacsw32-eol-ask-before-save nil))))

(defun as-external-fall-back (msg)
  "Fallback to text-mode if necessary."
  (text-mode)
  (lwarn t :warning "%s. Using text-mode" msg))

(defun as-external-for-wiki ()
  "Setup for mediawikis."
  (require 'wikipedia-mode nil t)
  (if (not (featurep 'wikipedia-mode))
      (as-external-fall-back "Can't find file wikipedia-mode.el")
    (wikipedia-mode)))

(defcustom as-external-its-all-text-regexp "/itsalltext/"
  "Regular expression matching It's All Text buffer's file."
  :type 'regexp
  :group 'as-external)

(defcustom as-external-alist
  (list
   (list (concat as-external-its-all-text-regexp
                 ".*"
                 "wiki")
         'as-external-for-wiki)
   '(as-external-its-all-text-regexp as-external-its-all-text-default)
   )
  "List to determine setup if Emacs is used as an external Editor.
Element in this list should have the form

  \(FILE-REGEXP BUFFER-SETUP)

where FILE-REGEXP should be a regular expression to match
`buffer-file-name'. If it matches then BUFFER-SETUP should be
called in the buffer.

* Tip when using Firefox's add-on It's All Text: It looks like
  the file name used will be constructed from the host url. For
  example if your are editing something on
  http://www.emacswiki.org/ the file name may be something like
  'www.emacswiki.org.283b1y212e.html'.


The list is processed by `as-external-setup'. Note that the first
match is used!

The default entries in this list supports for Firefox addon It's
All Text (see `as-external-its-all-text-default') and mediawiki (see
`as-external-for-wiki').

See also `as-external-mode'."
  :type '(repeat
          (list (choice (variable :tag "Regexp variable")
                        regexp)
                function))
  :group 'as-external)

(defcustom as-external-its-all-text-coding 'utf-8
  "Coding system to use for It's All Text buffers.
See also `as-external-its-all-text-default'."
  :type '(choice (const :tag "No special coding system" nil)
                 coding-system)
  :group 'as-external)


;;;###autoload
(define-minor-mode as-external-mode
  "If non-nil check for if Emacs is used as external editor.
When Emacs is used as an external editor for example to edit text
areas on a web page viewed with Firefox this library tries to
help to setup the buffer in a useful way. It may for example set
major and minor modes for the buffer.

See `as-external-alist' for more information."
  :global t
  :group 'as-external
  ;;(modify-coding-system-alist 'file "/itsalltext/" as-external-its-all-text-coding)
  (let ((coding-entry
         (cons
          as-external-its-all-text-regexp
          (cons as-external-its-all-text-coding
                as-external-its-all-text-coding))))
    (if as-external-mode
        (progn
          (add-to-list 'file-coding-system-alist coding-entry)
          (add-hook 'server-visit-hook 'as-external-setup t))
      (setq file-coding-system-alist
            (delq coding-entry file-coding-system-alist))
      (remove-hook 'server-visit-hook 'as-external-setup))))

(defun as-external-setup ()
  "Check if Emacs is used as an external editor.
If so then turn on useful major and minor modes.
This is done by checking `as-external-alist'."
  (condition-case err
      (as-external-setup-1)
    (error (message "as-external-setup error: %s" err))))

(defun as-external-setup-1 ()
  ;; Fix-me: How does one know if the file names are case sensitive?
  (catch 'done
    (dolist (rec as-external-alist)
      (let ((file-regexp (car rec))
            (setup-fun   (cadr rec)))
        (when (symbolp file-regexp)
          (setq file-regexp (symbol-value file-regexp)))
        (when (string-match file-regexp (buffer-file-name))
          (funcall setup-fun)
          (throw 'done t))))))


(provide 'as-external)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; as-external.el ends here
