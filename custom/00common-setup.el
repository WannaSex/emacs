(ido-mode t)
(set-default-font "Inconsolata LGC-14.5")
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(load-theme 'solarized-dark t)
(setq system-uses-terminfo nil)
(prefer-coding-system 'utf-8)
(setq-default indent-tabs-mode nil)
(defalias 'yes-or-no-p 'y-or-n-p) 
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)
(setq tab-width 4)

;; switch-window
;; (global-set-key (kbd "M-p") 'ace-window)
(global-set-key (kbd "C-c v") 'ace-window)

;; don't kill emacs
(defun dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
(global-set-key "\C-x\C-c" 'dont-kill-emacs)

;; win-switch
(require 'win-switch)
(win-switch-setup-keys-ijkl "\C-xo" "\C-x\C-o")
(setq win-switch-idle-time 2)

