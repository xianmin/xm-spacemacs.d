;; 段首空格
(defun insert-big-spc (p)
  "insert a Chinese spc."
  (interactive "*p")
  (insert "　　")) ;; 中文空格
(define-key global-map "\C-x，" 'insert-big-spc)

