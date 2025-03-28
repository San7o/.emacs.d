(deftheme giovanni-base
  "The basis for my custom theme.")

;; Run =list-faces-display= to get a list of faces
(let ((class '((class color) (min-colors 89)))
      (giovanni-grey "#282c34")
      (white "#ffffff"))
  (custom-theme-set-faces
   'giovanni-base
   `(default ((,class :background ,giovanni-grey :foreground ,white)))
   `(cursor ((,class :background ,white)))
   `(mode-line ((,class :background ,giovanni-grey
                        :foreground ,white)))
   `(mode-line-inactive ((,class :background ,giovanni-grey
                                 :foreground ,white)))
   `(fringe ((,class :background ,giovanni-grey)))
   `(line-number ((,class :background ,giovanni-grey)))))

(provide-theme 'giovanni-base)

(provide 'giovanni-base-theme)
