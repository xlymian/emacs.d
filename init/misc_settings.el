(set-frame-font "AnonymousPro-18")

;; https://www.masteringemacs.org/article/beginners-guide-to-emacs

(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

(global-linum-mode 1)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq column-number-mode t)
