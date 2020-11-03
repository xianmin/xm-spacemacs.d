;;; packages.el --- xm-hugo layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Chen Xianmin <xianmin12@qq.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst xm-hugo-packages
  '(
    easy-hugo
    ox-hugo
    ))

(defun xm-hugo/init-easy-hugo ()
  (use-package easy-hugo
    :init
    (progn
      (setq easy-hugo-basedir "~/Dropbox/Write/blog/")
      (setq easy-hugo-url "http://xianmin.org")
      (setq easy-hugo-previewtime "300")
      (spacemacs/set-leader-keys "ah" 'easy-hugo)
      (setq easy-hugo-default-ext ".md")
      (setq easy-hugo-postdir "content/post")
      )))

(defun xm-hugo/init-ox-hugo ()
  (use-package ox-hugo
    :init
    (progn
      (setq org-hugo-auto-set-lastmod t)
      (setq org-hugo-default-section-directory "post")
      (setq org-hugo-external-file-extensions-allowed-for-copying
            '("jpg" "jpeg" "tiff" "png" "svg" "pdf" "odt" "gif"))
      (spacemacs/set-leader-keys "ae" 'org-hugo-export-wim-to-md)
      )
    :after ox
    ))

;;; packages.el ends here
