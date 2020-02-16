
(set-window-margins nil 1)
(setq-default left-fringe-width 10)

(setf (cdr (assq 'continuation fringe-indicator-alist))
      '(nil right-curly-arrow))

;; (set-default 'truncate-lines nil)
(setq recentf-max-menu-items 10)

(setq-default tab-width 4)
(setq-default word-wrap t)
(setq-default cursor-type 'bar)
(setq-default indent-tabs-mode nil)

(setq blink-cursor-mode nil)
(setq cursor-type (quote bar))

(setq inhibit-startup-screen t)
(setq backup-directory-alist '(("." . "~/.emacs.d/file-backup/")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/file-backup/" t)))

(setq tooltip-mode t)

(setq linum-format " %d ")
;; (setq ivy-on-del-error-function #'ignore)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t)

(setq adaptive-wrap-extra-indent 1)

;; (setq company-auto-complete-chars '(32 40 41 46 34 47))

(setq-default company-backends
      '((company-files          ; files & directory
         company-keywords       ; keywords
         company-capf
         company-yasnippet)
        (company-abbrev company-dabbrev)))

(setq company-auto-complete-chars '(58 46 47))
(setq company-lsp-cache-candidates t)
(setq company-lsp-async t)
(setq company-lsp-enable-recompletion t)
(setq company-lsp-match-candidate-predicate #'company-lsp-match-candidate-prefix)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.1)
(setq company-async-wait 0.1)
(setq company-async-timeout 0.1)
(setq company-dabbrev-other-buffers t)
(setq company-require-match nil)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 1)

(setq lsp-enable-snippet nil)
(setq lsp-enable-symbol-highlighting nil)
(setq lsp-prefer-flymake nil)
(setq lsp-log-io nil)
(setq lsp-eldoc-render-all nil)
(setq lsp-pyls-plugins-pylint-enabled nil)
(setq lsp-pyls-plugins-pycodestyle-ignore '("E501" "E402" "W391" "W293" "W503"))

(setq lsp-ui-doc-enable nil)
;; (setq lsp-ui-doc-include-signature t)
;; (setq lsp-ui-doc-include-signature t t)
;; (setq lsp-ui-doc-position 'bottom)

(setq lsp-ui-sideline-show-hover nil)
(setq lsp-ui-sideline-diagnostic-max-lines 5)

(setq lsp-ui-sideline-show-code-actions nil)
(setq flycheck-idle-change-delay 3)
(setq flycheck-checker-error-threshold 20)

(setq highlight-indent-guides-method 'character)

(setq helm-adaptive-history-length 1)

(setq ibuffer-formats
      '((mark modified read-only " "
              (name 30 30 :left :elide)
              " "
              (size 9 -1 :left)
              " "
              (mode 20 20 :left :elide)
              " " filename-and-process)
        (mark " "
              (name 16 -1)
              " " filename)))

(set-face-attribute 'highlight nil
                    :background "grey20"
                    :foreground 'unspecified
                    :underline nil
                    )

(setq scroll-step            1
      scroll-conservatively  10000)
