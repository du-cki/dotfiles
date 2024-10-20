;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "du-cki"
      user-mail-address "qwuakers@gmail.com")

(setq doom-theme 'doom-tomorrow-night)

(setq display-line-numbers-type 'relative)

(setq python-shell-interpreter "python3.11"
      flycheck-python-pycompile-executable "python3.11")

(setq load-prefer-newer t)

(use-package! discord-emacs)
(discord-emacs-run "384815451978334208")

;; (use-package! lsp-tailwindcss
;;     :init
;;     (setq lsp-tailwindcss-add-on-mode t))

;; splash screen configs
(assoc-delete-all "Jump to bookmark" +doom-dashboard-menu-sections)
(assoc-delete-all "Open org-agenda" +doom-dashboard-menu-sections)
(assoc-delete-all "Open private configuration" +doom-dashboard-menu-sections)
(assoc-delete-all "Open documentation" +doom-dashboard-menu-sections)

;; since `Open project' only opens pre-existing projects, this is not exactly ideal for new projects.
(add-to-list '+doom-dashboard-menu-sections
             '("Open folder"
               :icon (nerd-icons-faicon "nf-fa-folder_open_o" :face 'doom-dashboard-menu-title) ;; 
               :face (:inherit (doom-dashboard-menu-title bold))
               :action dired))

(map! 
  "<backtab>" #'doom/dumb-dedent)

(map! :leader
  "c c" #'recompile
  "c C" #'compile)
