(require-package 'auto-complete-clang)

(require 'auto-complete-clang)

;; this require clang installed against your OS, and below settings for linux system
;; use: echo "" | g++ -v -x c++ -E -


(setq ac-clang-auto-save nil)
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq ac-clang-flags
        (mapcar(lambda (item)(concat "-I" item))
               (split-string
                "
 /usr/include/c++/4.8
 /usr/include/i386-linux-gnu/c++/4.8
 /usr/include/c++/4.8/backward
 /usr/lib/gcc/i686-linux-gnu/4.8/include
 /usr/local/include
 /usr/lib/gcc/i686-linux-gnu/4.8/include-fixed
 /usr/include/i386-linux-gnu
 /usr/include
")))
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)

(provide 'setup-auto-complete-clang)
