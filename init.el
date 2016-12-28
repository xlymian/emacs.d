(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(add-to-list 'load-path "~/.emacs.d/init")

(load "custom")
(load "keybindings")
(load "misc_settings")

(require 'textmate)
(textmate-mode)

;; GNU Emacs library to ensure environment variables inside Emacs look the
;; same as in the user's shell.
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
