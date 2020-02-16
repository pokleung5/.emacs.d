(global-set-key (kbd "M-<f5>") (lambda() (interactive) (load-file "/home/emacs/.emacs.d/init.el")))

(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(setq package-selected-packages
   (quote
    (flycheck format-all goto-line-preview highlight-indent-guides dap-mode adaptive-wrap swiper lsp-ivy company-lsp lsp-ui lsp-python-ms company lsp-java lsp-mode evil undo-tree)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode)
(column-number-mode)
(windmove-default-keybindings 'meta)

(ivy-mode t)
(evil-mode t)

(global-hl-line-mode)
(global-undo-tree-mode)
(global-eldoc-mode)
(global-company-mode)

(add-to-list 'custom-theme-load-path "/home/emacs/.emacs.d/themes/")
(load-theme 'wombat)

(load-file "/home/emacs/.emacs.d/keymap.el")
(load-file "/home/emacs/.emacs.d/vars.el")
(load-file "/home/emacs/.emacs.d/hooks.el")
(load-file "/home/emacs/.emacs.d/function.el")

(setq flycheck-python-flake8-executable "/home/python/anaconda3/bin/python3")
(setq flycheck-python-pycompile-executable "/home/python/anaconda3/bin/python3")
(setq flycheck-python-pylint-executable "/home/python/anaconda3/bin/python3")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-python-flake8-executable "/home/python/anaconda3/bin/python3")
 '(flycheck-python-pycompile-executable "/home/python/anaconda3/bin/python3")
 '(flycheck-python-pylint-executable "/home/python/anaconda3/bin/python3") 
 '(lsp-clients-python-library-directories
   (quote
    ("/home/python/anaconda3/lib/python37.zip" "/home/python/anaconda3/lib/python3.7" "/home/python/anaconda3/lib/python3.7/lib-dynload" "/home/python/anaconda3/lib/python3.7/site-packages" "/usr/")))
 '(lsp-python-ms-python-executable-cmd "/home/python/anaconda3/bin/python3")
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (flycheck format-all goto-line-preview highlight-indent-guides dap-mode adaptive-wrap swiper lsp-ivy company-lsp lsp-ui lsp-python-ms company lsp-java lsp-mode evil undo-tree))) 
 '(python-shell-interpreter "/home/python/anaconda3/bin/python3")
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:foreground "white"))))
 '(company-tooltip-selection ((t (:underline t))))
 '(helm-selection ((t (:background "gray20"))))
 '(helm-source-header ((t (:foreground "white" :weight bold :height 1)))))
