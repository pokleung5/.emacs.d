

(defun switch-to-ibuffer ()
  (interactive)
  (if (equal (buffer-name) "*Ibuffer*")
      (kill-buffer (buffer-name))
    (ibuffer)))

(defun run-java ()
  (interactive)
  (if (not (eq nil (string-match-p ".java" (buffer-name))))
      (async-shell-command
       (mapconcat 'identity
                  '("(if exist .class (rmdir /s /Q .class))"
                    "mkdir .class"
                    "javac *.java -d .class"
                    "echo ----------------------"
                    "java -cp .class Main") " && ") "*Java*"))
   (switch-to-buffer-other-window "*Java*"))

(defun run-java-compile ()
  (interactive)
  (if (not (eq nil (string-match-p ".java" (buffer-name))))
      (compile
       (mapconcat 'identity
                  '("(if exist .class (rmdir /s /Q .class))"
                    "mkdir .class"
                    "javac *.java -d .class -Xlint:unchecked") " && "))
    ))

(defun run-java-exist ()
  (interactive)
  (if (not (eq nil (string-match-p ".java" (buffer-name))))
      (async-shell-command "java -cp .class Main" "*Java*" "*Messages*")
    (switch-to-buffer-other-window "*Java*")))

(defun python-shell-send-cell ()
  (interactive)
  (let ((x (save-excursion
             (search-backward "#%%" nil 1 1) (point)))
        (y (save-excursion
             (search-forward "#%%" nil 1 1) (point))))
    (cond ((eq x y) (python-shell-send-buffer))
          ((eq x nil) (python-shell-send-region (point-min) y))
          ((eq y nil) (python-shell-send-region x (point-max)))
          (t (python-shell-send-region x y))
          )))

(defun set-unix-env ()
  ;; (set-process-coding-system 'unix)
  (set-buffer-file-coding-system 'unix)
  (set-buffer-process-coding-system 'unix)
  )


(defun kill-other-buffers () "Kill all other buffers."
       (interactive) (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

(defun backward-kill-char-or-word ()
  (interactive)
  (delete-region (point)
                 (save-excursion (when (= 0 (skip-syntax-backward ">"))
                                   (cond ((looking-back (rx (char word)) 1)
                                          (backward-word 1))
                                         (t (skip-syntax-backward "^ |^[:word:]|^>"))))
                                 (point)))
  (delete-horizontal-space))

(defun forward-kill-char-or-word ()
  (interactive)
  (let ((x (point))
        (y (save-excursion (skip-syntax-backward "^ |^[:word:]|^>") (point))))
    (cond ((= x y) (kill-word 1))
          (t  (delete-region x y)))
    ))
	
(defun ff (path)
  (find-file path))
