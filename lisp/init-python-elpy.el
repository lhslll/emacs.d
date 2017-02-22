;;; package --- setting for python IDE

;;; Codes:
(require-package 'elpy)



;;; setting to use ipython
;;; (elpy-use-ipython)


;;; setting for py-autopep8
(require-package 'py-autopep8)
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)




;;; setting for ein (add emacs ipython notebook)
(require-package 'ein)



(provide 'init-python-elpy)
;;; init-python-elpy ends here
