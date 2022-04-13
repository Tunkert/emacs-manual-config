;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; packages
(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'load-path "~/.emacs.d/packages/evil") ;; evil mode
(add-to-list 'load-path "~/.emacs.d/packages/php-mode/lisp") ;; php mode
(add-to-list 'load-path "~/.emacs.d/packages/dashboard") ;; dashboard
(add-to-list 'load-path "~/.emacs.d/packages/doom-modeline") ;; doom-modeline

;; evil mode
(require 'evil)
(evil-mode 1)

;; olivetti mode
(require 'olivetti)

;; php mode
(require 'php-mode)
(add-hook 'php-mode-hook 'php-enable-wordpress-coding-style)

;; theme load paths
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/gruvbox")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/material")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/dracula")

;; gruvbox theme
(load-theme 'gruvbox-dark-medium t)

;; dashboard theme
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-startup-banner "~/.emacs.d/packages/dashboard/images/logo.png")
(setq dashboard-banner-logo-title "Welcome to Tim's Emacs")
(setq dashboard-center-content t)

;; doom modeline
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-minor-modes t)
(setq doom-modeline-enable-word-count t)
(display-time-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ed8e6f452855fc7338c8be77803666b34745c19c6667197db48952107fa6d983" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" "36bf4d677eb52409603064561a949b9a50d7f987fc712527fb3921f968b4d196" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "9aa497527fbe122fe10adaafb75e01446f352b5c23116ac46b39d83bee4099e0" default))
 '(org-export-backends '(ascii html icalendar latex md odt)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
