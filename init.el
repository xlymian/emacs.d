(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Fullscreen mode on Cocoa
(if (fboundp 'ns-toggle-fullscreen)
    (global-set-key [(meta return)] 'ns-toggle-fullscreen))

(set-frame-font "AnonymousPro-18")
(load-theme 'wheatgrass)
