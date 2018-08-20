;; Add package repositorys
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap call packages and load org-init
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; here is where the magic happens
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (vhdl-capf csv-mode ivy-xref vhdl-tools flycheck-irony graphviz-dot-mode flycheck counsel-ctags hydra company-auctex auctex irony-eldoc magit multiple-cursors async ggtags counsel-gtags diminish company-arduino flx avy expand-region ivy try company use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
