;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DESCRIPTION: settings from old version

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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [f5] 'cua-mode)

;; OCD compliancy
(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'show-wspace)
(show-ws-toggle-show-trailing-whitespace)

(require 'textmate)
(textmate-mode)

;; Default theme
(load-theme 'wheatgrass)

;; Default frame font
(set-frame-font "AnonymousPro-16")

;; Fullscreen mode on Cocoa
(if (fboundp 'ns-toggle-fullscreen)
    (global-set-key [(meta return)] 'ns-toggle-fullscreen))

(defun i-wanna-be-social ()
  "Connect to IM networks using bitlbee."
  (interactive)
  (erc :server "planck.58966267.members.btmm.icloud.com" :port 6667 :nick "xlymian"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Multi-term: see
;; http://emacs-fu.blogspot.ca/2010/06/console-apps-in-emacs-with-multi-term.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'multi-term)

(autoload 'multi-term "multi-term" nil t)
(autoload 'multi-term-next "multi-term" nil t)

(setq multi-term-program "/bin/bash")   ;; use bash
;; (setq multi-term-program "/bin/zsh") ;; or use zsh...

;; only needed if you use autopair
(add-hook 'term-mode-hook
  #'(lambda () (setq autopair-dont-activate t)))


(global-set-key (kbd "C-c t") 'multi-term-next)
(global-set-key (kbd "C-c T") 'multi-term) ;; create a new one
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Thanks to http://whattheemacsd.com/mac.el-01.html
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)
