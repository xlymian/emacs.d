(set-frame-font "Anonymous Pro-18")

;; Start maximised (cross-platf)
;; (add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Start fullscreen (cross-platf)
;; (add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

;; https://www.masteringemacs.org/article/beginners-guide-to-emacs

(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; GNU Emacs library to ensure environment variables inside Emacs look the
;; same as in the user's shell.
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-linum-mode 1)

(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; (menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq column-number-mode t)

(setq multi-term-program "/bin/bash")

(setq tab-width 2)

(put 'downcase-region 'disabled nil)

;; aliases for gpg encrypt/decryption
(defalias 'sign 'epa-sign-region)
(defalias 'encrypt 'epa-encrypt-region)
(defalias 'decrypt 'epa-decrypt-region)
(defalias 'verify 'epa-verify-region)
