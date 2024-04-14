;; -*- coding: utf-8; lexical-binding: t; -*-

(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(

    ;; English word abbrev
    ("arg" "argument" )
    ("bc" "because" )
    ("bg" "background" )
    ("bt" "between" )

    ;; English abridged words
    ("cnt" "can't" )
    ("ddnt" "didn't" )
    ("dnt" "don't" )

    ;; phrase abbrev
    ("afaik" "as far as i know" )
    ("atm" "at the moment" )
    ("ty" "thank you" )
    ("btw" "by the way" )

    ;; computing
    ("cfg" "context-free grammar" )
    ("cs" "computer science" )

    ;; tech company
    ("gc" "Google Chrome" )
    ("macos" "macOS" )
    ("msw" "Microsoft Windows" )

    ;; programing
    ("ipa" "IP address" )
    ("jvm" "Java Virtual Machine" )
    ("rsi" "Repetitive Strain Injury" )
    ("subdir" "subdirectory" )
    ("db" "database" )

    ("evp" "environment variable" )
    ("guip" "graphical user interface" )
    ("oopp" "object oriented programing" )
    ("osp" "operating system" )

    ;; programing
    ("eq" "==" )
    ("r" "return" )
    ("utf8" "-*- coding: utf-8 -*-" )

    ;; regex
    ("rgaz" "\\([A-Za-z0-9]+\\)")
    ("rgshy" "\\(?:xx\\)")
    ("rgbracket" "\\[\\([^]]+?\\)\\]")
    ("rgcurly" "“\\([^”]+?\\)”")
    ("rgdigits" "\\([0-9]+\\)")
    ("rgdate" "\\([0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]\\)")
    ("rgdot" "\\(.\\)")
    ("rgstr" "\\([^\"]+?\\)")
    ("rgtag" "\\([</>=\" A-Za-z0-9]+\\)")

    ;; unicode
    ("bu" "•" )
    ("catface" "😸" )
    ("hearts" "♥💓💕💙💚💛💜" )
    ("ra" "→" )
    ("la" "←" )

    ;;
    ))

;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

(progn
  (when (boundp 'python-mode-abbrev-table)
    (clear-abbrev-table python-mode-abbrev-table))
  (define-abbrev-table 'python-mode-abbrev-table
    '(("im" "import")
      ("fr" "from")
      ("fixm" "# FIXME:")
      ("anot" "# NOTE:")
      ("tod" "# TODO:"))
  )
)

(set-default 'abbrev-mode t)

(setq save-abbrevs nil)
