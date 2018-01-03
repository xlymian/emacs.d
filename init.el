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
(load "misc-settings")
(load "powerline-init")
(load "textmate-init")

(require 'helm-config)
(helm-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

;; https://github.com/senny/rbenv.el
(require 'rbenv)
(global-rbenv-mode)

;; https://www.emacswiki.org/emacs/RspecMode
(require 'rspec-mode)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))
