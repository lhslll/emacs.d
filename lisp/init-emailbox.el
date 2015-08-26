
(require-package 'mew)


;; mew settings
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(setq read-mail-command 'mew)
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-sent-message
      'mew-draft-kill
      'mew-send-hook))

(setq mew-use-cached-passwd t)
(setq mew-ssl-verify-level 0)

(setq mew-config-alist
      '(("default"
	 ("mailbox-type" . pop)
	 ("name" . "LI/HUSHENG")
	 ("user" . "lihusheng0623")
	 ("mail-domain" . "gmail.com")
	 ("smtp-ssl" . t)
	 ("smtp-ssl-port" . "465")
	 ("smtp-server" . "smtp.gmail.com")
	 ("pop-ssl" . t)
	 ("pop-ssl-port" . "995")
	 ("pop-server" . "pop.gmail.com")
	 ("pop-user" . "lihusheng0623@gmail.com")
	 ("pop-auth" . pass)
	 ("pop-delete" . nil)
	 ;;("prog-ssl" . "/usr/bin/stunnel")
	 ;;("proto" . "%")
	 )
        ("ms"
	 ("mailbox-type" . pop)
	 ("name" . "LI/HUSHENG")
	 ("user" . "lihusheng0623")
	 ("mail-domain" . "outlook.com")
	 ("smtp-ssl" . t)
	 ("smtp-ssl-port" . "465")
	 ("smtp-server" . "smtp-mail.outlook.com")
	 ("pop-ssl" . t)
	 ("pop-ssl-port" . "995")
	 ("pop-server" . "pop-mail.outlook.com")
	 ("pop-user" . "lihusheng0623@hotmail.com")
	 ("pop-auth" . pass)
	 ("pop-delete" . nil)
	 ;;("prog-ssl" . "/usr/bin/stunnel")
	 ;;("proto" . "%")
	 )
        ("imap-gmail"
	 ("mailbox-type" . pop)
	 ("name" . "LI/HUSHENG")
	 ("user" . "lihusheng0623")
	 ("mail-domain" . "gmail.com")
	 ("smtp-ssl" . t)
	 ("smtp-ssl-port" . "465")
	 ("smtp-server" . "smtp.gmail.com")
	 ("imap-ssl" . t)
	 ("imap-ssl-port" . "993")
	 ("imap-server" . "imap.gmail.com")
	 ("imap-user" . "lihusheng0623@gmail.com")
	 ("imap-auth" . pass)
	 ("imap-delete" . nil)
	 ;;("prog-ssl" . "/usr/bin/stunnel")
	 ("proto" . "%")
	 )
        ))


(provide 'init-emailbox)
