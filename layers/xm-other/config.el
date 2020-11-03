;; 透明度
(defun adjust-opacity (frame incr)
  (let* ((oldalpha (or (frame-parameter frame 'alpha) 100))
         (newalpha (+ incr oldalpha)))
    (when (and (<= frame-alpha-lower-limit newalpha) (>= 100 newalpha))
      (modify-frame-parameters frame (list (cons 'alpha newalpha))))))

(global-set-key (kbd "M-C-8") '(lambda () (interactive) (adjust-opacity nil -10)))
(global-set-key (kbd "M-C-9") '(lambda () (interactive) (adjust-opacity nil 10)))
(global-set-key (kbd "M-C-0") '(lambda () (interactive) (modify-frame-parameters nil `((alpha . 100)))))

;; 改变 minor mode 显示
(spacemacs|diminish purpose-mode " P" " P")

;; yasnippet 设置
(setq yas-snippet-dirs '("~/.spacemacs.d/snippets/"))
