(global-set-key (kbd "M-1") 'abort-recursive-edit)
(global-set-key (kbd "M-2") 'find-file)
(global-set-key (kbd "M-3") 'swiper)
(global-set-key (kbd "M-4") 'undo-tree-visualize)

(global-set-key (kbd "M-W") 'switch-to-ibuffer)
(global-set-key (kbd "M-w") 'switch-to-buffer)
(global-set-key (kbd "M-k") 'delete-window)

(global-set-key (kbd "M-d") 'kill-region)
(global-set-key (kbd "C-M-P") 'yank-pop)
(global-set-key (kbd "C-M-p") 'yank)
(global-set-key (kbd "M-y") 'kill-ring-save)

(global-set-key (kbd "M-s") 'split-window-below)
(global-set-key (kbd "M-S") 'split-window-horizontally)

(global-set-key (kbd "M-g") 'goto-line-preview)
(global-set-key (kbd "M-b") 'helm-filtered-bookmarks)
(global-set-key (kbd "M-Q") 'kill-buffer)

(global-set-key (kbd "M-u") 'undo-tree-undo)
(global-set-key (kbd "M-r") 'undo-tree-redo)

(global-set-key (kbd "M-=") 'enlarge-window)
(global-set-key (kbd "C-M-=") 'enlarge-window-horizontally)
(global-set-key (kbd "M--") 'shrink-window)
(global-set-key (kbd "C-M--") 'shrink-window-horizontally)

;; (global-set-key (kbd "C-s") 'save-buffer)

(global-set-key (kbd "M->") (lambda() (interactive) (indent-rigidly
                                                     (min (mark) (point))
                                                     (max (mark) (point)) 4)))
(global-set-key (kbd "M-<") (lambda() (interactive) (indent-rigidly
                                                     (min (mark) (point))
                                                     (max (mark) (point)) -4)))


