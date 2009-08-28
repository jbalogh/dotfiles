(require 'color-theme)

(defun al3x-theme ()
  (interactive)
  (color-theme-install
   '(al3x-theme
     ((background-color . "#28292c")
      (foreground-color . "#f8f8f8")
      (cursor-color . "#a7a7a7")
      (mouse-color . "white")
      (background-mode . dark))
     (default ((t (nil))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (italic ((t (:italic t))))
     (font-lock-builtin-face ((t (:bold t :foreground "#7587a6"))))
     (font-lock-comment-face ((t (:foreground "#716c64"))))
     (font-lock-constant-face ((t (:bold t :foreground "#c98fb0"))))
     (font-lock-doc-string-face ((t (:bold t :foreground "#51B200"))))
     (font-lock-function-name-face ((t (:foreground "#c1c1c1"))))
     (font-lock-keyword-face ((t (:bold t :foreground "#cda869"))))
     (font-lock-preprocessor-face ((t (:foreground "#8722c9" :bold t))))
     (font-lock-reference-face ((t (:foreground "#9b859d"))))
     (font-lock-string-face ((t (:foreground "#bdae98"))))
     (font-lock-type-face ((t (:bold t :foreground "#008080"))))
     (font-lock-variable-name-face ((t (:foreground "#7587a6"))))
     (font-lock-warning-face ((t (:bold t :foreground "indian red"))))
     (py-builtins-face ((t (:bold t :foreground "#398EE6"))))
     (py-pseudo-keyword-face ((t (:bold t :foreground "#398EE6"))))
     (trailing-whitespace ((t (:background "red")))))))
 
; highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#444")
 
; show paren mode colors
(require 'paren)
(set-face-background 'show-paren-match-face "#505052")
(set-face-foreground 'show-paren-match-face "#ffaaeb")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)