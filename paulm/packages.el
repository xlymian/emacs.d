;; My packages
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby)
  "A list of packages to ensure are installed at launch.")

;; Install them
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
