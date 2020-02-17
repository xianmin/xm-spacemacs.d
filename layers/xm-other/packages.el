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
    multiple-cursors
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

(defun xm-other/init-multiple-cursors ()
  (use-package multiple-cursors
    ;; :defer t
    :bind
    (:map mc/keymap ("<return>" . nil))
    :init
    (progn
      (spacemacs/declare-prefix "sm" "multiple-cursors")
      (spacemacs/declare-prefix "sms" "specials")
      (spacemacs/set-leader-keys
        "sma" 'mc/mark-all-dwim
        "smb" 'mc/mark-all-like-this
        "smm" 'mc/mark-more-like-this-extended
        "smr" 'mc/edit-lines
        "smsl" 'mc/insert-letters
        "smsm" 'mc/mark-sgml-tag-pair
        "smsn" 'mc/insert-numbers
        "smsr" 'set-rectangular-region-anchor
        "smss" 'mc/sort-regions
        "smst" 'mc/reverse-regions)
      (setq mc/always-run-for-all t)
      ;; (define-key mc/keymap (kbd "<return>") nil)
      (global-set-key (kbd "C-M-<mouse-1>") 'mc/add-cursor-on-click)
      (global-set-key (kbd "C-M-<up>") 'mc/mark-previous-like-this)
      (global-set-key (kbd "C-M-<down>") 'mc/mark-next-like-this)
      (with-eval-after-load 'multiple-cursors-core
        (add-to-list 'mc/cmds-to-run-once 'helm-M-x)
        (add-to-list 'mc/cmds-to-run-once 'counsel-M-x)
        (add-to-list 'mc/cmds-to-run-once 'spacemacs/default-pop-shell)
        ))))

;;; packages.el ends here
