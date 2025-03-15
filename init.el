(require 'package)
(setq package-archives '(
	     ("GNU" . "http://elpa.gnu.org/packages/")
	     ("MELPA" . "http://melpa.org/packages/")
	     ))
(unless package--initialized (package-initialize))

(load-theme 'modus-vivendi t)
;; Set default theme to white (I am trying this out)
(modus-themes-toggle)
(customize-set-variable 'modus-themes-common-palette-overrides
                        `(
                          ;; Make the mode-line borderless
                          (bg-mode-line-active bg-inactive)
                          (fg-mode-line-active fg-main)
                          (bg-mode-line-inactive bg-inactive)
                          (fg-mode-line-inactive fg-dim)
                          (border-mode-line-active bg-inactive)
                          (border-mode-line-inactive bg-nactive)
                          ))

(when (< emacs-major-version 29)
  (unless (package-installed-p 'use-package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install 'use-package)))

(use-package evil
  :ensure t)

(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode))

(use-package markdown-mode
  :ensure t)

(use-package ivy
  :ensure t
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package avy
  :ensure t
  :bind
  ("C-:" . avy-goto-char))
;; Alternative way of setting a keybinding:
;;(global-set-key (kbd "C-:") 'avy-goto-char)

(use-package diff-hl
  :ensure t
  :hook (after-init . global-diff-hl-mode))

(use-package emms
  :ensure t
  :hook (after-init . emms-all)
  :config
  (setq emms-player-list '(emms-player-vlc)
        emms-info-functions '(emms-info-native)))

(use-package gnus
  :ensure t
  :config
  (setq gnus-select-method '(nntp "news.gmane.io")))

(use-package yasnippet
  :ensure t)

(use-package olivetti
  :ensure t)

(use-package marginalia
  :ensure t
  :hook (after-init . marginalia-mode))

(use-package nerd-icons
  :ensure t)

(use-package nerd-icons-completion
  :ensure t
  :after marginalia
  :config
  (add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))

(use-package nerd-icons-corfu
  :ensure t
  :after corfu
  :config
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

  (use-package nerd-icons-dired
    :ensure t
    :hook (dired-mode . nerd-icons-dired-mode))

(use-package swiper
  :ensure t)

(use-package orderless
  :ensure t
  :custom
  (setq completion-styles '(orderless basic))
  (setq completion-category-defaults nil)
  (setq completion-category-overrides nil))

(use-package kubernetes
  :ensure t)

(use-package ox-publish
  :ensure t)
(use-package simple-httpd
  :ensure t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(display-time-mode 1)

(setq-default inhibit-startup-screen t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(use-package dired
  :hook ((dired-mode . dired-hide-details-mode)))

(global-display-line-numbers-mode)
(setq display-line-numbers 'relative)

(setq display-time-format "%I:%M")

(require 'battery)
(when (and battery-status-function
           (not (string-match-p "N/A"
                                (battery-format "%B"
                                                (funcall battery-status-function)))))
  (display-battery-mode 1))

(set-face-attribute 'default nil :height 130)

(setq-default gnutls-trustfiles (list "~/.emacs.d/cacert.pem"
                                     "/etc/pki/tls/certs/ca-bundle.pem"))

(global-display-fill-column-indicator-mode 1)
(setq global-display-fill-column-indicator-column 80)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
 )

(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

(desktop-save-mode 1)

;; Monkey-type game
;;(require 'typit)

(global-set-key (kbd "C-c c") 'compile)

;;(require 'undo-tree)
;;(global-undo-tree-mode)

;;(require 'obsidian)
;;(obsidian-specify-path "~/ObsidianVault")

;;(require 'elfeed)
;;(require 'elfeed-dashboard)
;;(setq elfeed-feeds
;;      '("http://www.kroah.com/log/index.rss"
;;        "https://www.dragonflydigest.com/feed/"
;;        "https://protesilaos.com/master.xml"
;;        "http://feeds.feedburner.com/linuxquestions/latest"))

;;(pdf-tools-install)
;;(pdf-loader-install)

;; LSP
;;(require 'lsp-mode)
;;(require 'helm-lsp)
;;(require 'helm-mode)
;;(require 'helm-xref)

;; Language highlight
;;(setq treesit-language-source-alist
;;  '((c3 "https://github.com/c3lang/tree-sitter-c3")))

;;(add-to-list 'load-path "~/.emacs.d/c3-ts-mode")
;;(require 'c3-ts-mode)

;; ############## EXWM BEGIN ##################
;; Emac's X window manager, works fine

;;(require 'exwm)
  ;; Set the default number of workspaces
;;  (setq exwm-workspace-number 5)

  ;; When window "class" updates, use it to set the buffer name
  ;; (add-hook 'exwm-update-class-hook #'efs/exwm-update-class)

  ;; These keys should always pass through to Emacs
;;  (setq exwm-input-prefix-keys
;;    '(?\C-x
;;      ?\C-u
;;      ?\C-h
;;      ?\M-x
;;      ?\M-`
;;      ?\M-&
;;      ?\M-:
;;      ?\C-\M-j  ;; Buffer list
;;      ?\C-\ ))  ;; Ctrl+Space

  ;; Ctrl+Q will enable the next key to be sent directly
;;  (define-key exwm-mode-map [?\C-q] 'exwm-input-send-next-key)

  ;; Set up global key bindings.  These always work, no matter the input state!
  ;; Keep in mind that changing this list after EXWM initializes has no effect.
;;  (setq exwm-input-global-keys
;;       `(
          ;; Reset to line-mode (C-c C-k switches to char-mode via exwm-input-release-keyboard)
;;          ([?\s-r] . exwm-reset)

          ;; Move between windows
;;          ([s-left] . windmove-left)
;;          ([s-right] . windmove-right)
;;          ([s-up] . windmove-up)
;;          ([s-down] . windmove-down)

          ;; Launch applications via shell command
;;          ([?\s-&] . (lambda (command)
;;                       (interactive (list (read-shell-command "$ ")))
;;                       (start-process-shell-command command nil command)))

          ;; Switch workspace
;;          ([?\s-w] . exwm-workspace-switch)

          ;; 's-N': Switch to certain workspace with Super (Win) plus a number key (0 - 9)
;;          ,@(mapcar (lambda (i)
;;                      `(,(kbd (format "s-%d" i)) .
;;                        (lambda ()
;;                          (interactive)
;;                          (exwm-workspace-switch-create ,i))))
;;                    (number-sequence 0 9))

          ;; Audio keys
;;          ([XF86AudioRaiseVolume] . (lambda ()
;;				      (interactive)
;;				      (shell-command "amixer set Master 5%+")))
;;          ([XF86AudioLowerVolume] . (lambda ()
;;				      (interactive)
;;				      (shell-command "amixer set Master 5%-")))

;;          ([XF86AudioMute] . (lambda()
;;			       (interactive)
;;			       (shell-command "amixer set Master toggle")))
;;          ([XF86AudioMicMute] . (lambda()
;;				   (interactive)
;;				   (shell-command "amixer set Master toggle")))
          ;; Brightness
;;          ([XF86MonBrightnessUp] . (lambda()
;;				   (interactive)
;;				   (shell-command "echo $(( $(cat /sys/class/backlight/intel_backlight/brightness) + 10000)) > /sys/class/backlight/intel_backlight/brightness")))
;;          ([XF86MonBrightnessDown] . (lambda()
;;				   (interactive)
;;				   (shell-command "echo $(( $(cat /sys/class/backlight/intel_backlight/brightness) - 10000)) > /sys/class/backlight/intel_backlight/brightness")))
;;      ))

;;  (exwm-enable)
;; ############### EXWM END ##################
