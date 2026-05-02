;;; ghstly-themes.el --- Ghstly themes package  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Ghosty <ghosty141@gmail.com>

;; Author: Ghosty <ghosty141@gmail.com>
;; Version: 0.2
;; Package-Requires: ((emacs "31.1"))
;; Keywords: faces, theme
;; URL: https://github.com/ghosty141/ghstly-themes
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Provides ghstly-themes-dark and ghstly-themes-light themes.

;;; Code:

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

;;;###autoload
(defun ghstly-themes-load-dark ()
  "Load the Ghstly dark theme."
  (interactive)
  (load-theme 'ghstly-themes-dark t))

;;;###autoload
(defun ghstly-themes-load-light ()
  "Load the Ghstly light theme."
  (interactive)
  (load-theme 'ghstly-themes-light t))

(provide 'ghstly-themes)

;;; ghstly-themes.el ends here
