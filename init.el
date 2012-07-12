;; See https://github.com/technomancy/emacs-starter-kit
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; My packages
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby)
  "A list of packages to ensure are installed at launch.")

;; Install them
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
