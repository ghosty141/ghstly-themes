;;; ghstly-themes-dark-theme.el --- Ghstly dark theme  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Ghosty <ghosty141@gmail.com>

;; Author: Ghosty <ghosty141@gmail.com>
;; URL: https://github.com/ghosty141/ghstly-themes
;; SPDX-License-Identifier: MIT

;;; Commentary:
;; Minimalist dark theme with vibrant accent colors

;;; Code:

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(deftheme ghstly-themes-dark
  "Ghstly dark theme.")

(let* (;; base
       (ghstly-fg              "white smoke")
       (ghstly-bg              "black")

       ;; accents
       (ghstly-red             "red")
       (ghstly-blue            "dodger blue")
       (ghstly-green           "lawn green")
       (ghstly-orange          "orange")
       (ghstly-magenta         "magenta")
       (ghstly-purple          "medium orchid")
       (ghstly-mint            "medium spring green")
       (ghstly-light-blue      "light blue")

       ;; neutrals
       (ghstly-light-grey      "gray65")
       (ghstly-lighter-grey    "gray90")
       (ghstly-darkgrey        "gray11")
       (ghstly-darker-grey     "gray9")

       ;; bright
       (ghstly-bright-yellow   "yellow")

       ;; ui
       (ghstly-inactive-fg     "gray40")
       (ghstly-ui-panel-bg     "#090909")
       (ghstly-ui-panel-border "gray26"))

  (custom-theme-set-faces
   'ghstly-themes-dark

   ;; =====================
   ;; Base faces
   ;; =====================

   `(default ((t (:background ,ghstly-bg :foreground ,ghstly-fg))))
   `(cursor ((t (:foreground ,ghstly-fg))))
   `(region ((t (:background ,ghstly-darkgrey))))
   `(highlight ((t (:weight bold))))
   `(italic ((t (:slant oblique))))
   `(border ((t (:foreground "black"))))

   ;; =====================
   ;; UI structure
   ;; =====================

   `(header-line ((t (:background ,ghstly-ui-panel-bg :foreground ,ghstly-light-grey))))
   `(mode-line ((t (:background ,ghstly-ui-panel-bg :foreground ,ghstly-light-grey))))
   `(mode-line-inactive ((t (:background ,ghstly-ui-panel-bg :foreground ,ghstly-inactive-fg))))
   `(mode-line-buffer-id ((t (:foreground ,ghstly-fg))))

   `(line-number-current-line
     ((t (:inherit line-number :foreground ,ghstly-lighter-grey :bold t))))
   `(fringe ((t (:inherit default))))

   ;; =====================
   ;; Interaction
   ;; =====================

   `(button ((t (:foreground ,ghstly-mint :underline nil))))
   `(link ((t (:foreground ,ghstly-mint :underline t))))
   `(help-key-binding ((t (:inherit button))))

   ;; =====================
   ;; Completion
   ;; =====================

   `(completions-common-part ((t (:foreground ,ghstly-magenta))))

   ;; =====================
   ;; Syntax highlighting
   ;; =====================

   `(font-lock-comment-face ((t (:foreground ,ghstly-purple))))
   `(font-lock-string-face ((t (:foreground ,ghstly-orange))))
   `(font-lock-keyword-face ((t (:foreground ,ghstly-orange))))
   `(font-lock-builtin-face ((t (:foreground ,ghstly-light-blue))))
   `(font-lock-type-face ((t (:foreground ,ghstly-light-blue))))
   `(font-lock-constant-face ((t (:foreground ,ghstly-light-blue))))

   `(font-lock-function-name-face ((t (:foreground ,ghstly-fg))))
   `(font-lock-variable-name-face ((t (:foreground ,ghstly-fg))))

   ;; =====================
   ;; Language-specific
   ;; =====================

   `(css-selector ((t (:foreground ,ghstly-orange))))
   `(css-property ((t (:foreground ,ghstly-fg))))

   ;; =====================
   ;; Org mode
   ;; =====================

   `(org-level-1 ((t (:height 1.3 :weight bold))))
   `(org-level-2 ((t (:weight bold))))
   `(org-level-3 ((t (:foreground ,ghstly-fg))))
   `(org-level-4 ((t (:foreground ,ghstly-fg))))

   `(org-block-begin-line
     ((t (:background ,ghstly-ui-panel-bg :foreground ,ghstly-light-grey))))

   ;; =====================
   ;; Info / help
   ;; =====================

   `(info-node ((t (:foreground ,ghstly-bright-yellow :weight bold))))
   `(info-xref ((t (:foreground ,ghstly-bright-yellow :weight bold))))
   `(info-menu-5 ((t (:underline t))))
   `(Info-quoted ((t (:weight bold))))

   ;; =====================
   ;; Dired
   ;; =====================

   `(dired-directory ((t (:foreground ,ghstly-light-blue))))
   `(dired-header ((t (:foreground ,ghstly-fg :weight bold))))

   ;; =====================
   ;; Misc UI
   ;; =====================

   `(secondary-selection ((t (:background "deepskyblue4"))))
   `(calendar-today ((t (:underline t))))
   `(holiday ((t (:background ,ghstly-red))))
   `(diary ((t (:foreground ,ghstly-orange))))

   `(show-paren-match ((t (:background "deepskyblue4"))))
   `(show-paren-mismatch ((t (:foreground "white" :background ,ghstly-red))))

   `(variable-pitch ((t (:family "DejaVu Sans"))))

   ;; =====================
   ;; Corfu
   ;; =====================

   `(corfu-default ((t (:background ,ghstly-bg :foreground ,ghstly-fg))))
   `(corfu-current ((t (:inherit corfu-default :background ,ghstly-darker-grey))))
   `(corfu-popupinfo ((t (:inherit corfu-default :height 0.9))))
   `(corfu-border ((t (:background ,ghstly-ui-panel-border))))
   `(corfu-bar ((t (:background ,ghstly-light-grey))))

   ;; =====================
   ;; Consult
   ;; =====================

   `(consult-preview-cursor ((t (:inherit default :weight bold))))
   `(consult-git-log-grep-sha ((t (:foreground ,ghstly-light-blue))))

   ;; =====================
   ;; Tabs
   ;; =====================

   `(tab-bar ((t (:background ,ghstly-bg))))
   `(tab-line ((t (:background ,ghstly-bg :foreground ,ghstly-fg))))

   `(centaur-tabs-default ((t (:background ,ghstly-bg :foreground ,ghstly-fg))))
   `(centaur-tabs-selected ((t (:background ,ghstly-ui-panel-bg :foreground ,ghstly-fg))))
   `(centaur-tabs-unselected ((t (:background ,ghstly-bg :foreground ,ghstly-inactive-fg))))

   ;; =====================
   ;; Diff
   ;; =====================

   `(diff-hl-change ((t (:foreground ,ghstly-blue :background ,ghstly-bg))))
   `(diff-hl-insert ((t (:foreground ,ghstly-green :background ,ghstly-bg))))
   `(diff-hl-delete ((t (:foreground ,ghstly-red :background ,ghstly-bg))))

   ;; =====================
   ;; Shell
   ;; =====================

   `(comint-highlight-prompt ((t (:inherit nil))))))

(provide-theme 'ghstly-themes-dark)
(provide 'ghstly-themes-dark-theme)

;; Local variables:
;; package-lint-main-file: "ghstly-themes.el"
;; end:

;;; ghstly-themes-dark-theme.el ends here
