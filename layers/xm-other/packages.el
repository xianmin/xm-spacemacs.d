;;; packages.el --- xm-other layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Chen Xianmin <xianmin12@qq.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst xm-other-packages
  '(
    cheat-sh
    (auto-save :location local)
    (company-english-helper :location local)
    window-purpose
    ))

(defun xm-other/init-cheat-sh ()
  (use-package cheat-sh
    :init
    ))

(defun xm-other/init-auto-save ()
  (use-package auto-save
    :config
    (progn
      (auto-save-enable)        ;; 开启自动保存功能
      (setq auto-save-slient t)       ;; 自动保存的时候静悄悄的， 不要打扰我
      )))

(defun xm-other/init-company-english-helper ()
  (use-package company-english-helper
    :init
    (progn
      (global-set-key (kbd "C-.") 'toggle-company-english-helper)
      )))

(defun xm-other/init-window-purpose ()
  (use-package window-purpose
  :config
  (progn
    (purpose-mode)
    )))

;;; packages.el ends here
