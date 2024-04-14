;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;

(setq
 doom-font (font-spec :family "JetBrains Mono" :size 15)
 doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 15)
 doom-big-font (font-spec :family "JetBrains Mono" :size 24))

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-tokyo-night) ;; default 'doom-one

(setq fancy-splash-image "~/.emacs-assets/splash.png")

;; font
(custom-set-faces!
  '(doom-dashboard-footer :inherit font-lock-constant-face)
  '(doom-dashboard-footer-icon :inherit nerd-icons-red)
  '(doom-dashboard-loaded :inherit font-lock-warning-face)
  '(doom-dashboard-menu-desc :inherit font-lock-string-face)
  '(doom-dashboard-menu-title :inherit font-lock-function-name-face))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

(setq select-enable-clipboard nil)
(map! "S-C-c" #'clipboard-kill-ring-save)
(map! "S-C-v" #'clipboard-yank)

;; select all
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; delete backwards without replacing the clipboard
(global-set-key (kbd "C-<backspace>") 'evil-delete-backward-word)


;; windows
(map! :leader "wv" #'+evil/window-vsplit-and-follow)
(map! :n "gv" #'+evil/window-vsplit-and-follow)
(map! :n "gs" #'+evil/window-split-and-follow)
(map! :n "gh" #'evil-window-left)
(map! :n "gj" #'evil-window-down)
(map! :n "gk" #'evil-window-up)
(map! :n "gl" #'evil-window-right)

;; buffers
(map! :n "g[" #'previous-buffer)
(map! :n "g]" #'next-buffer)

;;workspaces
(map! :leader
      "1" #'+workspace/switch-to-0
      "2" #'+workspace/switch-to-1
      "3" #'+workspace/switch-to-2
      "5" #'+workspace/switch-to-3
      "6" #'+workspace/switch-to-4
      "7" #'+workspace/switch-to-5
      "8" #'+workspace/switch-to-6
      "9" #'+workspace/switch-to-7
      )

(after! persp-mode
  (setq persp-emacsclient-init-frame-behaviour-override "main")
  )

;; turn on abbrev mode globally
(load "~/.emacs-assets/my-abbrev.el")

(after! company
  ;; Unbind Tab key from Company mode for yas
  (define-key company-active-map (kbd "TAB") nil)
  (define-key company-active-map (kbd "<tab>") nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

;; hide bold etc. markers
(setq org-hide-emphasis-markers t)

;; add close time for todo
(setq org-log-done 'time)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(map! :map treemacs-mode-map
      [mouse-1] #'treemacs-single-click-expand-action)

;; toggle treemacs
(map! :nvmi "C-e" '+treemacs/toggle)

(add-hook 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode)

(setq vterm-shell "/usr/bin/zsh")

;; for lsp refferences
(defun my-lsp-list-references ()
  "List references using LSP."
  (interactive)
  (cond
   ((derived-mode-p 'python-mode) (lsp-find-references))
   ((derived-mode-p 'js-mode) (lsp-find-references))
   ;; Add more major modes and their respective LSP commands here
   (t (message "No LSP references command available for this mode"))))

(map! :nv "SPC rr" #'my-lsp-list-references)

(setq python-shell-interpreter "~/env/venv-emacs/bin/python")
