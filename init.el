(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(load "~/.emacs.d/init/custom")
(load "~/.emacs.d/init/keybindings")
(load "~/.emacs.d/init/misc_settings")

(put 'upcase-region 'disabled nil)

(require 'textmate)
(textmate-mode)
