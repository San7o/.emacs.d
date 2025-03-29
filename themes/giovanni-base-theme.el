(deftheme giovanni-base
  "Giovanni's custom theme")

;; Run =list-faces-display= to get a list of faces
;; You may first want to =disable-theme= your theme
;; so that colors from other themes are not carried
;; over to the new instance.
;; Get a list of available font families in your system
;; with "fc-list : family"
(let ((class '((class color) (min-colors 89)))
      (giovanni-grey "#282c34")
      (giovanni-dark-grey "#262a30")
      (giovanni-light-grey "#4f5156")
      (white "#ffffff"))
  (custom-theme-set-faces
   'giovanni-base
   `(default ((,class :background ,giovanni-grey
                      :foreground ,white
                      :font-family "Vazirmatn")))
   `(cursor ((,class :background ,white)))
   `(mode-line ((,class :background ,giovanni-grey
                        :foreground ,white)))
   `(mode-line-inactive ((,class :background ,giovanni-grey
                                 :foreground ,white)))
   `(fringe ((,class :background ,giovanni-grey)))
   `(line-number ((,class :background ,giovanni-grey)))
   `(region ((,class :background ,giovanni-light-grey)))
   ))

(provide-theme 'giovanni-base)

(provide 'giovanni-base-theme)
