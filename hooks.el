;; (push 'company-lsp company-backends)
;; (setq-local company-backends '(company-jedi company-files)))))

(defun show-linum ()
  (linum-mode 1))

(defun hide-linum ()
  (linum-mode -1))

(defun java-set-company ()
  (set (make-local-variable 'company-backends) '(company-lsp company-tng company-eclim)))

(defun python-set-company ()
  (set (make-local-variable 'company-backends) '(company-lsp company-tng company-jedi))
  ;; (require 'lsp-python-ms)
  )

;; (eshell)

(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'prog-mode-hook 'adaptive-wrap-prefix-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)

(add-hook 'goto-line-preview-before-hook 'show-linum)
(add-hook 'goto-line-preview-after-hook 'hide-linum)

(add-hook 'dired-mode-hook 'toggle-truncate-lines)

(add-hook 'java-mode-hook 'java-set-company)
(add-hook 'python-mode-hook 'python-set-company)

(advice-add 'evil-quit :override 'kill-this-buffer)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map (kbd "[?\t]") 'company-complete-common-or-cycle))
