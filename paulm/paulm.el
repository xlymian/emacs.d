;; DESCRIPTION: paulm settings (from old version)

;; https://github.com/topfunky/emacs-starter-kit/blob/master/book.local.el

;; Normal is 36pt. Screencastable is 26pt.
;; (set-face-font 'default "-apple-inconsolata-medium-r-normal--18-0-72-72-m-0-iso10646-1")

;;(set-face-font 'default "-apple-helvetica-medium-r-normal--18-0-72-72-m-0-iso10646-1")
;;(color-theme-topfunky)

;; Show a list of available variants:
;; M-x eval-expression
;; (x-family-fonts "myriad pro")

;; characters wide, lines tall
;; (set-frame-size (car (frame-list)) 95 27)
;; x y
;; (set-frame-position (car (frame-list)) 17 33)

;; (add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
;; (require 'textmate)
;; (textmate-mode)

;; (whitespace-mode)

(global-set-key [f5] 'cua-mode)

(require 'show-wspace)
(show-ws-toggle-show-trailing-whitespace) ;; OCD mode

