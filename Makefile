EMACS ?= emacs

EL_FILES := ghstly-themes.el ghstly-themes-dark-theme.el ghstly-themes-light-theme.el

.PHONY: all check compile lint checkdoc clean

all: check

check: compile lint checkdoc

compile:
	$(EMACS) -Q --batch \
	  --eval "(progn (setq byte-compile-error-on-warn t) (add-to-list 'load-path \".\") (mapc 'byte-compile-file '($(addprefix \",$(addsuffix \",$(EL_FILES))))))"

lint:
	$(EMACS) -Q --batch \
	  --eval "(progn (require 'package) (package-initialize) (require 'package-lint) (dolist (f (file-expand-wildcards \"*.el\")) (with-temp-buffer (delay-mode-hooks (emacs-lisp-mode)) (insert-file-contents f) (package-lint-buffer))))"

checkdoc:
	$(EMACS) -Q --batch \
	  --eval "(progn (require 'checkdoc) (dolist (f (file-expand-wildcards \"*.el\")) (checkdoc-file f)))"

clean:
	rm -f *.elc