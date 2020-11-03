;;; packages.el --- xm-write layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Chen Xianmin <xianmin12@qq.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst xm-write-packages
  '(
    writeroom-mode
    fcitx
    wc-mode
    writegood-mode
    ;;    (chinese-font :location local)
    cnfonts
    ))

(defun xm-write/init-writeroom-mode ()
  (use-package writeroom-mode
    :init
    (progn
      (global-set-key (kbd "<S-f11>") 'writeroom-mode)
      (setq writeroom-fullscreen-effect 'maximized)
      (setq writeroom-mode-line-toggle-position 'mode-line-format)
      (setq writeroom-mode-line t)
      )))

(defun xm-write/init-fcitx ()
  (use-package fcitx
    :init
    (progn
      ;; Make sure the following comes before `(fcitx-aggressive-setup)'
      (setq fcitx-active-evil-states '(insert emacs hybrid)) ; if you use hybrid mode
      (fcitx-aggressive-setup)
      (fcitx-prefix-keys-add "M-m") ; M-m is common in Spacemacs
      (setq fcitx-use-dbus t) ; uncomment if you're using Linux
      )))

(defun xm-write/init-wc-mode ()
  (use-package wc-mode
    :init
    ))

(defun xm-write/init-writegood-mode ()
  (use-package writegood-mode
    :init
    ))

;; (defun xm-write/init-chinese-font ()
;;   (use-package chinese-font
;;     :init
;;     ))

(defun xm-write/init-cnfonts ()
  (use-package cnfonts
    :init
      ;; 让 cnfonts 随着 Emacs 自动生效。
      (cnfonts-enable)
      ;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
      (cnfonts-set-spacemacs-fallback-fonts)
      (setq cnfonts-directory "~/Dotfiles/emacs/xm-spacemacs.d/layers/xm-write/cnfonts")
      (setq cnfonts-use-face-font-rescale t)
      (global-set-key (kbd "C-=") 'cnfonts-increase-fontsize)
      (global-set-key (kbd "C--") 'cnfonts-decrease-fontsize)
    ))

;;; packages.el ends here
