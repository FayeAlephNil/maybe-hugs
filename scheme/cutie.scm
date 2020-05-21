; Make sure to establish boundaries ahead of time! If you don't know, assume you can't, and just ask <3
(define (make-cutie some-name pronoun1 pronoun2)
  `((name . ,some-name) (pronouns . (,pronoun1 . ,pronoun2)) (listen? . ,#f) (hug? . ,#f) (give-advice? . ,#f)))

(define (listening do? pronouns)
  (if do?
      (string-append " appreciates you listening to " (cdr pronouns))
      (string-append " is thankful " (car pronouns) " doesn't have to explain the situation right now")))

(define (hugging do? pronouns)
  (if do?
      ", especially with the accompanying hugs"
      (string-append " and respecting " (cdr pronouns) " boundaries")))

(define (advice do? pronouns)
  (if do?
      ", and your advice is really helpful."
      (string-append ", but " (car pronouns) " wouldn't like to hear your advice right now.")))

(define (help cutie)
  (let ([pronouns (assq-ref cutie 'pronouns)])
    (string-append
     (assq-ref cutie 'name)
     (listening (assq-ref cutie 'listen?) pronouns)
     (hugging (assq-ref cutie 'hug?) pronouns)
     (advice (assq-ref cutie 'give-advice?) pronouns))))

(define cassie (make-cutie "Cassie" "she" "her"))
(assq-set! cassie 'listen? #t)
(assq-set! cassie 'hug? #t)
(assq-set! cassie 'give-advice? #f)

(define stephanie (make-cutie "Stephanie" "she" "her"))
(assq-set! stephanie 'listen? #t)
(assq-set! stephanie 'hug? #t)
(assq-set! stephanie 'give-advice? #t)

(define meri (make-cutie "Merbear" "she" "her"))
(assq-set! meri 'listen? #t)
(assq-set! meri 'hug? #t)
(assq-set! meri 'give-advice? #t)

(define lun (make-cutie "LUN-4" "it" "it"))
(assq-set! lun 'listen? #f)
(assq-set! lun 'hug? #t)
(assq-set! lun 'give-advice? #f)

(define blair (make-cutie "Blair" "she" "her"))
(assq-set! blair 'listen? #t)
(assq-set! blair 'hug? #t)
(assq-set! blair 'give-advice? #f)
