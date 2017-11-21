;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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

;; https://github.com/jonathanchu/emacs-powerline
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves

(put 'downcase-region 'disabled nil)
