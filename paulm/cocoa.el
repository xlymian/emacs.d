;; Fullscreen mode on Cocoa
(if (fboundp 'ns-toggle-fullscreen)
    (global-set-key [(meta return)] 'ns-toggle-fullscreen))
