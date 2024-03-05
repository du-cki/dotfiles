;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

(package! gcmh
  :recipe (:host github
           :repo "emacsmirror/gcmh"))

(package! discord-emacs
  :recipe (:host github
           :repo "simmsb/discord-emacs.el"))

(package! undo-fu
  :recipe (:host github 
	   :repo "emacsmirror/undo-fu")
  :pin "913cbb4ff3659d8537c764e56953dbb1b85e73c9")

(package! undo-fu-session
  :recipe (:host github
           :repo "emacsmirror/undo-fu-session"))

(package! wakatime-mode) 
 
(package! jsdoc 
  :recipe (:host github 
           :repo "isamert/jsdoc.el")) 

;; (package! lsp-tailwindcss :recipe (:host github :repo "merrickluo/lsp-tailwindcss"))
