(global-set-key "\C-xy" 'universal-argument)

;; wtf?
;; (viper-add-local-keys 'insert-state
;;   '(("\C-'" . (lambda ()
;;                 (interactive)
;;                 (insert "\"")))))

(global-set-key [(f5)] 'blank-mode)

(define-key viper-vi-global-user-map "\C-[" 'find-tag)

(define-key minibuffer-local-map (kbd "M-p") 'previous-complete-history-element)
(define-key minibuffer-local-map (kbd "M-n") 'next-complete-history-element)

(provide 'keys)
