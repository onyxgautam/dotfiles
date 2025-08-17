((nil .  ((eval . (add-hook 'after-save-hook
                            (lambda nil
                              (let ((base-dir (expand-file-name "~/dotfiles")))
                                (when (string-match-p
                                       (concat "^" base-dir)
                                       default-directory)
                                  (let ((default-directory base-dir))
                                    (shell-command "stow .")))))
                            nil t)))))
