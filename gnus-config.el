;; -*- Mode: Emacs-Lisp -*-

(load-private-data) ;; For loading private.el.gpg

(setq message-signature
  (lambda ()
    (shell-command-to-string "cat $HOME/.signature")))

;;(load-private "gnus-private")
;;(load-private "signatures-private")

;; News servers:
(setq gnus-select-method '(nntp "news.albasani.net"))
;;(setq gnus-secondary-select-methods '((nntp "news.gmane.org")))
;;(setq gnus-select-method '(nntp "news.gmane.org"))
;;(setq gnus-select-method '(nntp "news.telepac.pt"))
;;(setq gnus-secondary-select-methods '((nntp "news.novis.pt")))

;; Sort groups by level, then alphabetically
(setq gnus-group-sort-function
  '(gnus-group-sort-by-alphabet gnus-group-sort-by-level))

;; Group newsgroups in topics
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; Set the group timestamp when reading messages
(add-hook 'gnus-select-group-hook 'gnus-group-set-timestamp)

;; Don't show nntp+news.gmane...
(setq gnus-group-line-format "%M%S%p%P%5y:%B%(%G%)%l %O %z\n")

;; Limit to threads younger than 30 days (use it on a summary buffer,
;; not when starting gnus
;;(gnus-summary-limit-to-age 30 t)

;; Show a tree in the summary buffer
;;(setq gnus-summary-line-format "%U%R%z%I%(%[%4L: %-23,23f%]%) %s\n")

;; To be able to send messages
(defun message-make-fqdn ()
  "farnsworth.albasani.net")

;; (defun start-gnus (server)
;;   (let ((gnus-select-method
;;          (cdr (assoc server my-news-servers))))
;;     (gnus)))

;; (defun gnus-novis ()
;;   (interactive)
;;   (start-gnus 'novis))

;; (defun gnus-sapo ()
;;   (interactive)
;;   (start-gnus 'sapo))


;; show all headers
(setq gnus-visible-headers nil)

;; ignore boring headers
;; From: http://www.emacswiki.org/cgi-bin/emacs-en/ArticleBuffer
(setq gnus-ignored-headers
      "^References:\\|^Xref:\\|^Cancel-Lock\\|^X-Priority:\\|
^Cache-Post-Path:\\|^X-MSMail-Priority:\\|^X-CopyIf-Converted-Headers\\|
^X-Hamster-Info\\|^X-Gnus-Mail-Source\\|^X-Gnus-Article-Number\\|
^X-Scanned-By\\|^X-Authentication-Warning\\|^Sender\\|^Delivered-To\\|
^Mailing-Lis\\|^Content-Disposition\\|^X-OriginalArrivalTime\\|
^Mail-Copies-To\\|^Envelope-To\\|^X-Orig-NNTP-Posting-Host\\|
^X-OpenMail-Hops\\|^X-Virus-Scanned\\|^X-Ham-Trace\\|^Original-X-From\\|
^X-Report-Spam\\|^X-Original-Path\\|^X-Orig-X-Trace\\|^X-KorrNews\\|
^X-Converter\\|^Supersedes\\|^Expires\\|^X-Spam-Tests-Failed\\|
^X-Declude-Sender\\|^Original-Received\\|^Original-To\\|
^X-Injected-Via-Gmane\\|^Original-X-Complaints-To\\|^Original-Lines\\|
^Original-Path\\|^Original-Newsgroups\\|^Original-NNTP-Posting-Host\\|
^Original-X-Trace\\|^Original-NNTP-Posting-Date\\|^Content-Language\\|
^X-dnq-Autoconverted\\|^X-Cache\\|^X-Amavis-Alert\\|^Mail-To-News-Contact\\|
^X-Original-To\\|^X-Orig-NNTP-Posting-Date\\|^X-Orig-Complaints-To\\|
^X-Spam-Checker-Version\\|^X-Scanner\\|^X-Spam-Score\\|^List-Id\\|
^X-Mailman-Version\\|^Errors-To\\|^X-BeenThere\\|^X-XEmacs-List\\|
^X-Abuse-Info\\|^X-Comment-To\\|^X-Mail-Copies-To\\|^X-Spam-Status\\|
^X-Spam-Level\\|^List-Post\\|^List-Help\\|^List-Unsubscribe\\|^List-Subscribe\\|
^X-RBL-Warning\\|^X-Gate\\|^X-eGroups-Return\\|^X-Apparently-To\\|
^X-Newsgroups\\|^X-Yahoo-Profile\\|^Disposition-Notification-To\\|
^X-Message-Flag\\|^X-Post-To\\|^X-Converters\\|^X-Hamster-Trace\\|
^Cancel-Key\\|^X-Gateway\\|^X-URL-to-Original\\|^X-NNTP-Posting-Host\\|
^Delivery-Date\\|^X-Hamster-To\\|Received:\\|^Message-ID\\|^Content-Type:\\|
^Lines:\\|^X-Face:\\|^Face:\\|^X-From\\|^X-ReImported\\|^X-Accept-Language\\|
^X-Sent\\|^X-Orig-Path\\|^X-Trace\\|^X-Complaints-To\\|^NNTP-Posting-Date\\|
^X-Sender\\|^X-In-Reply-To\\|^MIME-Version:\\|^MBOX-Line\\|^Precedence\\|
^Priority:\\|^Content-Transfer\\|^In-Reply-To:\\|^NNTP-Posting-Host:\\|
^Approved:\\|^Path:\\|^X-MIME\\|^Resent-\\|^Return\\|^X-Pgp-Sig\\|
^X-GPG-Sig\\|^X-GnuPG-Sig\\|^X-ID\\|^X-Old-Xref\\|^X400\\|^Status:")

