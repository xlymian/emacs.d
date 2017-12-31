;; https://sites.google.com/site/steveyegge2/effective-emacs 
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Goto line
;; In textmate-mode, use: ⌘L - Go to Line
(global-set-key "\C-x\C-g" 'goto-line)

;; C-? instead of C-h
;; overrides mark-whole-buffer
(global-set-key "\C-xh" 'help-command)
(global-set-key "\C-c\C-h" 'help-command)

;; C-h delete-backward-char
(global-set-key "\C-h" 'delete-backward-char)

(put 'upcase-region 'disabled nil)

;; Magit
(global-set-key "\C-xg" 'magit-status)

(global-set-key [f1] 'multi-term)
(global-set-key (kbd "<f2>") 'tomatinho)

(global-set-key (kbd "C-<return>") 'eval-expression)

;;
;; Add some shortcuts to init files
;;
(global-set-key (kbd "C-c c")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/Cask")))

(global-set-key (kbd "C-c e")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/init.el")))

(global-set-key (kbd "C-c k")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/init/keybindings.el")))

(global-set-key (kbd "C-c m")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/init/misc-settings.el")))

(global-set-key (kbd "C-c u")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/init/custom.el")))

(global-set-key (kbd "C-c p")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/init/powerline-init.el")))

(global-set-key "\C-xw" 'whitespace-mode)

(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key "\C-cf" 'fzf)

;; find-file-at-point  ffap
