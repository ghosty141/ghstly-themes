;;; ghstly-themes-light-theme.el --- Ghstly light theme  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Ghosty <ghosty141@gmail.com>

;; Author: Ghosty <ghosty141@gmail.com>
;; URL: https://github.com/ghosty141/ghstly-themes
;; SPDX-License-Identifier: MIT

;;; Commentary:
;; Minimalist light theme with vibrant accent colors

;;; Code:

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(deftheme ghstly-themes-light
  "Ghstly light theme.")

(let* (;; base
       (ghstly-fg              "black")
       (ghstly-bg              "white smoke")

       ;; accents
       (ghstly-blue            "blue")
       (ghstly-grey            "gray46")
       (ghstly-purple          "dark violet")
       (ghstly-red             "Firebrick")
       (ghstly-light-blue      "RoyalBlue3")
       (ghstly-light-grey      "grey85")
       (ghstly-light-purple    "#ffd0ff")
       (ghstly-dark-grey       "gray30")
       (ghstly-dark-green      "green4")
       (ghstly-dark-cyan       "#327a9f")

       ;; ui
       (ghstly-border          "grey75")
       (ghstly-fg-inactive     "grey50")
       (ghstly-panel-bg        "grey85"))

  (custom-theme-set-faces
   'ghstly-themes-light

   ;; =====================
   ;; Base faces
   ;; =====================

   `(default ((t (:foreground ,ghstly-fg :background ,ghstly-bg))))
   `(cursor ((t (:foreground ,ghstly-fg))))
   `(region ((t (:background ,ghstly-light-grey))))
   `(highlight ((t (:weight bold))))
   `(italic ((t (:slant oblique))))
   `(shadow ((t (:foreground ,ghstly-dark-grey :underline nil))))
   `(border ((t (:foreground ,ghstly-border))))

   ;; =====================
   ;; UI structure
   ;; =====================

   `(header-line ((t (:background ,ghstly-panel-bg :foreground ,ghstly-fg))))

   `(mode-line
     ((t (:background ,ghstly-panel-bg
          :foreground ,ghstly-fg
          :box (:line-width 1 :color ,ghstly-border)))))

   `(mode-line-inactive
     ((t (:background ,ghstly-light-grey
          :foreground ,ghstly-fg-inactive
          :box (:line-width 1 :color ,ghstly-border)))))

   `(line-number-current-line ((t (:inherit line-number :weight bold))))
   `(fringe ((t (:inherit default))))

   ;; =====================
   ;; Interaction
   ;; =====================

   `(button ((t (:foreground ,ghstly-light-blue :underline nil))))
   `(link ((t (:foreground ,ghstly-light-blue :underline t))))

   ;; =====================
   ;; Completion / search
   ;; =====================

   `(isearch ((t (:foreground ,ghstly-fg :background ,ghstly-light-purple))))

   ;; =====================
   ;; Syntax highlighting
   ;; =====================


   `(font-lock-type-face ((t (:foreground ,ghstly-purple))))
   `(font-lock-constant-face ((t (:foreground ,ghstly-purple))))
   `(font-lock-preprocessor-face ((t (:foreground ,ghstly-purple))))
   `(font-lock-builtin-face ((t (:foreground ,ghstly-dark-cyan))))

   `(font-lock-string-face ((t (:foreground ,ghstly-red))))
   `(font-lock-keyword-face ((t (:foreground ,ghstly-blue))))
   `(font-lock-comment-face ((t (:foreground ,ghstly-grey))))

   `(font-lock-variable-name-face ((t (:inherit default))))
   `(font-lock-function-name-face ((t (:inherit default))))

   ;; =====================
   ;; Magit
   ;; =====================

   `(magit-section-heading ((t (:foreground ,ghstly-fg :weight bold))))
   `(magit-diff-file-heading ((t (:inherit default))))

   `(magit-diff-added
     ((t (:foreground ,ghstly-dark-green :background "#ddffdd"))))

   `(magit-diff-added-highlight
     ((t (:foreground ,ghstly-dark-green :background "#c4ffc4"))))

   ;; =====================
   ;; Org mode
   ;; =====================

   `(org-level-1 ((t (:height 1.2 :weight bold))))
   `(org-level-2 ((t (:weight bold))))
   `(org-level-3 ((t (:foreground ,ghstly-fg))))
   `(org-level-4 ((t (:foreground ,ghstly-fg))))

   `(org-block-begin-line
     ((t (:foreground ,ghstly-dark-grey :background ,ghstly-light-grey))))

   ;; =====================
   ;; Corfu
   ;; =====================

   `(corfu-popupinfo ((t (:height 0.9))))))

(provide-theme 'ghstly-themes-light)
(provide 'ghstly-themes-light-theme)

;; Local variables:
;; package-lint-main-file: "ghstly-themes.el"
;; end:

;;; ghstly-themes-light-theme.el ends here
