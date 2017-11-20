;; https://sites.google.com/site/steveyegge2/effective-emacs 
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; goto line
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

(global-set-key (kbd "C-c e")
		(lambda ()
		  (interactive)
		  (find-file "~/.emacs.d/init.el")))

(global-set-key "\C-xw" 'whitespace-mode)

;; find-file-at-point  ffap
