;;; packages.el --- xm-org layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Chen Xianmin <xianmin12@qq.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst xm-org-packages
  '(
    org-brain
    org-autolist
    ))

(defun xm-org/init-org-brain ()
  (use-package org-brain :ensure t
    :init
    (setq org-brain-path "~/Dropbox/Write/brain")
    :config
    (setq org-id-track-globally t)
    (setq org-id-locations-file "~/Dropbox/Write/brain/.org-id-locations")
    (setq org-brain-visualize-default-choices 'root)
    (setq org-brain-title-max-length 20)
    ;; Custom Key Bindings
    (global-set-key (kbd "<f12>") 'org-brain-agenda)
    ))

(defun xm-org/init-org-autolist ()
  (use-package org-autolist
    :after org
    :config
    (org-autolist-mode +1)
    ))

;;; packages.el ends here
