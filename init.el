(require 'package)
(setq package-archives '(
	     ("GNU" . "http://elpa.gnu.org/packages/")
	     ("MELPA" . "http://melpa.org/packages/")
	     ))
(unless package--initialized (package-initialize))

;; (load-theme 'modus-vivendi t)
;; ;; Default theme is white, unless the time is after 18 (6 pm)
;; (when (< (decoded-time-hour (decode-time)) 18)
;;   (modus-themes-toggle))

;; (customize-set-variable 'modus-themes-common-palette-overrides
;;                         `(
;;                           ;; Make the mode-line borderless
;;                           (bg-mode-line-active bg-inactive)
;;                           (fg-mode-line-active fg-main)
;;                           (bg-mode-line-inactive bg-inactive)
;;                           (fg-mode-line-inactive fg-dim)
;;                           (border-mode-line-active bg-inactive)
;;                           (border-mode-line-inactive bg-nactive)
;;                           ))

(setq custom-safe-themes t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'giovanni-base)

(when (< emacs-major-version 29)
  (unless (package-installed-p 'use-package)
    ;;(unless package-archive-contents
     ;; (package-refresh-contents))
    (package-install 'use-package)))

(use-package org
    :ensure nil ; do not try to install it as it is built-in
    :config
    (setq org-todo-keywords
          '((sequence "TODO(t)" "WAIT(w!)" "|" "CANCEL(c!)" "DONE(d!)"))))

;; Automatically toggle Latex
  (use-package org-fragtog
    :ensure t
    :config
    (setq org-format-latex-options
        '(:foreground "White" 
                      :background "Transparent" 
                      :scale 3.0      ;; Base scaling factor
                      :html-scale 1.5 ;; For HTML export
                      :matchers ("begin" "$1" "$" "$$" "\\(" "\\["))))
  (add-hook 'org-mode-hook 'org-fragtog-mode)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "/home/santo/giovanni-diary/content")
  :init
  (setq org-roam-v2-ack t) ;; acknowledge v2
  :config
  (org-roam-db-autosync-mode))

;; (use-package org-roam-ui
;;   :ensure t
;;   :after org-roam
;;   :hook (after-init . org-roam-ui-mode)
;;   :config
;;   (setq org-roam-ui-sync-theme t
;;         org-roam-ui-follow t
;;         org-roam-ui-update-on-save t
        ;; org-roam-ui-open-on-start t))

(use-package markdown-mode
  :ensure t)

(use-package ggtags
  :ensure t
  :config
  (global-set-key (kbd "C-c f") 'ggtags-find-definition))

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
  (setq emms-source-file-default-directory "~/music/")
  (setq emms-browser-music-directory "~/music/")
  (setq emms-player-list '(emms-player-mpv))
  (setq emms-info-functions '(emms-info-native)))

(require 'newsticker)
(setq newsticker-url-list
      '(("Eli Bendersky" "https://eli.thegreenplace.net/feeds/all.atom.xml")
        ("Emacs Redux" "https://emacsredux.com/atom.xml")))
(use-package gnus
    :ensure t
    :config
    (setq gnus-select-method '(nntp "news.gmane.io"))
    (setq gnus-directory "~/.emacs.d/news/")
    (setq gnus-home-directory "~/.emacs.d/")
    (setq gnus-startup-file "~/.emacs.d/.newsrc")
    (setq gnus-current-startup-file "~/.emacs.d/.newsrc")
    (setq gnus-init-file "~/.emacs.d/"))

(require 'mm-url)
(defadvice mm-url-insert (after DE-convert-atom-to-rss () )
  "Converts atom to RSS by calling xsltproc."
  (when (re-search-forward "xmlns=\"http://www.w3.org/.*/Atom\"" 
         nil t)
    (goto-char (point-min))
    (message "Converting Atom to RSS... ")
    (call-process-region (point-min) (point-max) 
       "xsltproc" 
       t t nil 
       (expand-file-name "~/.emacs.d/atom2rss.xsl") "-")
    (goto-char (point-min))
    (message "Converting Atom to RSS... done")))

(ad-activate 'mm-url-insert)

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

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

(use-package kubernetes
  :ensure t)

;;(use-package ox-publish
;;  :ensure t)
(use-package simple-httpd
  :ensure t)

(use-package mastodon
  :ensure t
  :config
  (setq mastodon-instance-url "https://mastodon.social"
        mastodon-active-user "santo7"))

(when (< emacs-major-version 30)
  (use-package auto-complete
    :ensure t
    :hook (after-init . auto-complete-mode)))

(use-package flycheck
  :ensure
  :commands flycheck-mode
  :config
  (setq flycheck-check-syntax-automatically
        '(save mode-enabled))
  :hook (flycheck-error-list-mode-hook . visual-line-mode))

(use-package rfc-mode
  :ensure t
  :config
  (setq rfc-mode-directory (expand-file-name "~/.emacs.d/rfc/")))

(use-package hledger-mode
  :ensure
  :config
  (add-to-list 'auto-mode-alist '("\\.journal\\'" . hledger-mode))
  (setq hledger-jfile "/home/santo/todo.org/expenses.journal")
  (global-set-key (kbd "C-c j") 'hledger-run-command))

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

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Monkey-type game
;;(require 'typit)

(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c v") 'modus-themes-toggle)

(defcustom my-search-web-handler "https://duckduckgo.com/html/?q="
  "How to search. Could be a string that accepts the search query at the end (URL-encoded)
or a function that accepts the text (unencoded)."
  :type '(choice (string :tag "Prefix URL to search engine.")
                 (function :tag "Handler function.")))

(defun my-open-url-or-search-web (&optional text-or-url)
  (interactive (list (if (region-active-p)
                         (buffer-substring (region-beginning) (region-end))
                       (or
                        (and (derived-mode-p 'org-mode)
                             (let ((elem (org-element-context)))
                               (and (eq (org-element-type elem) 'link)
                                    (buffer-substring-no-properties
                                     (org-element-begin elem)
                                     (org-element-end elem)))))
                        (thing-at-point 'url)
                        (thing-at-point 'email)
                        (thing-at-point 'filename)
                        (thing-at-point 'word)))))
    (catch 'done
      (let (list)
        (with-temp-buffer
          (insert text-or-url)
          (org-mode)
          (goto-char (point-min))
          ;; We add all the links to a list first because following them may change the point
          (while (re-search-forward org-any-link-re nil t)
            (add-to-list 'list (match-string-no-properties 0)))
          (when list
            (dolist (link list)
              (org-link-open-from-string link))
            (throw 'done list))
          ;; Try emails
          (while (re-search-forward thing-at-point-email-regexp nil t)
            (add-to-list 'list (match-string-no-properties 0)))
          (when list
            (compose-mail (string-join list ", "))
            (throw 'done list)))
        ;; Open filename if specified, or do a web search
        (cond
         ((ffap-guesser) (find-file-at-point))
         ((functionp my-search-web-handler)
          (funcall my-search-web-handler text-or-url))
         ((stringp my-search-web-handler)
          (browse-url (concat my-search-web-handler (url-hexify-string text-or-url))))))))

(keymap-global-set "C-c o" #'my-open-url-or-search-web)

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

;;  (use-package evil
;;    :ensure t)

;;(desktop-save-mode 1)

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
