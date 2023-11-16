CLIPS> (defrule Menu
  (not (iffoundChoice ?))
  =>
  (printout t crlf crlf
    "The cat found has:" crlf crlf 
    "1.) Stripes" crlf 
    "2.) Spots" crlf 
    "3.) Dwarf body" crlf 
    "4.) Chilly characteristic" crlf 
    "5.) Mane event" crlf 
    "6.) Long tail" crlf crlf 
    "Enter your choice (1|2|3|4|5|6): ")
  (assert (iffoundChoice (read))))




;; Rule 1
(defrule Rule1
  (iffoundChoice 1)
  ?retractCh1 <- (iffoundChoice 1)
  (not (ifYesNochoise ?))
  =>
  (retract ?retractCh1)
  (printout t crlf crlf crlf "Is ventral scale extended full body length? (yes|no)" crlf crlf 
    "Your answer: ")
  (assert (ifYesNochoise (read)))
  (printout t crlf "This cat has stripes. Proceeding to Rule 2." crlf)
  (assert (rule2-triggered true)))

;; Rule 2
(defrule Rule2
  (rule2-triggered true)
  (cat (color orange))
  =>
  (printout t crlf "This stripey cat is orange. It may be a tiger." crlf)
  (assert (tiger true)));; Rule 3
(defrule Rule3
  (iffoundChoice 2)
  ?retractCh2 <- (iffoundChoice 2)
  (not (ifYesNochoise ?))
  =>
  (retract ?retractCh2)
  (printout t crlf crlf crlf "Is the cat's speed exceptionally high? (yes|no)" crlf crlf 
    "Your answer: ")
  (assert (ifYesNochoise (read)))
  (printout t crlf "This cat has spots. Proceeding to Rule 4." crlf)
  (assert (rule4-triggered true)))

;; Rule 4
(defrule Rule4
  (rule4-triggered true)
  (cat (speed speedy))
  =>
  (printout t crlf "This speedy cat may be a cheetah. Proceeding to Rule 5." crlf)
  (assert (rule5-triggered true)))

;; Rule 5
(defrule Rule5
  (rule5-triggered true)
  (cat (name car))
  =>
  (printout t crlf "This cat named 'Car' may be a jaguar." crlf)
  (assert (jaguar true)))

;; Rule 6
(defrule Rule6
  (iffoundChoice 3)
  ?retractCh3 <- (iffoundChoice 3)
  (not (ifYesNochoise ?))
  =>
  (retract ?retractCh3)
  (printout t crlf crlf crlf "Does the cat have a dwarf body? (yes|no)" crlf crlf 
    "Your answer: ")
  (assert (ifYesNochoise (read)))
  (printout t crlf "This cat has a dwarf body. Proceeding to Rule 7." crlf)
  (assert (rule7-triggered true)))

;; Rule 7
(defrule Rule7
  (rule7-triggered true)
  (cat (ears big))
  =>
  (printout t crlf "This cat has big ears. It may be a serval." crlf)
  (assert (serval true)))

;; Rule 8
(defrule Rule8
  (iffoundChoice 4)
  ?retractCh4 <- (iffoundChoice 4)
  (not (ifYesNochoise ?))
  =>
  (retract ?retractCh4)
  (printout t crlf crlf crlf "Does the cat have a chilly characteristic? (yes|no)" crlf crlf 
    "Your answer: ")
  (assert (ifYesNochoise (read)))
  (printout t crlf "This cat has a chilly characteristic. It may be a snow leopard." crlf)
  (assert (rule9-triggered true)))

;; Rule 9
(defrule Rule9
  (rule9-triggered true)
  (cat (name malcom-x))
  =>
  (printout t crlf "This cat named 'Malcom X' is a black panther." crlf)
  (assert (panther true)))

;; Rule 10
(defrule Rule10
  (iffoundChoice 5)
  ?retractCh5 <- (iffoundChoice 5)
  (not (ifYesNochoise ?))
  =>
  (retract ?retractCh5)
  (printout t crlf crlf crlf "Does the cat have a mane event? (yes|no)" crlf crlf 
    "Your answer: ")
  (assert (ifYesNochoise (read)))
  (printout t crlf "This cat has a mane event. It may be a lion." crlf)
  (assert (lion true)))

;; Rule 11
(defrule Rule11
  (iffoundChoice 6)
  ?retractCh6 <- (iffoundChoice 6)
  (not (ifYesNochoise ?))
  =>
  (retract ?retractCh6)
  (printout t crlf crlf crlf "Does the cat have a long tail? (yes|no)" crlf crlf 
    "Your answer: ")
  (assert (ifYesNochoise (read)))
  (printout t crlf "This cat has a long tail. It may be a puma." crlf)
  (assert (rule12-triggered true)))

;; Rule 12
(defrule Rule12
  (rule12-triggered true)
  (cat (deodorant true))
  =>
  (printout t crlf "This cat has deodorant. It may be a lynx." crlf)
  (assert (rule13-triggered true)))

;; Rule 13
(defrule Rule13
  (rule13-triggered true)
  (cat (ears big))
  =>
  (printout t crlf "This cat has big ears. It may be a caracal." crlf)
  (assert (bobcat true)))

;; Rule 14
(defrule Rule14
  (bobcat true)
  =>
  (printout t crlf "This cat is a bobcat." crlf)
  (assert (rule15-triggered true)))

;; Rule 15
(defrule Rule15
  (rule15-triggered true)
  (cat (color brown))
  =>
  (printout t crlf "This brown cat may be a Bengal cat." crlf)
  (assert (rule16-triggered true)))

;; Rule 16
(defrule Rule16
  (rule16-triggered true)
  (cat (size small))
  =>
  (printout t crlf "This small cat may be a Siamese cat." crlf)
  (assert (siamese true)))

;; Rule 17
(defrule Rule17
  (siamese true)
  =>
  (printout t crlf "This cat is a Siamese cat." crlf)
  (assert (rule18-triggered true)))

;; Rule 18
(defrule Rule18
  (rule18-triggered true)
  (cat (color black))
  =>
  (printout t crlf "This black cat may be a Bombay cat." crlf)
  (assert (rule19-triggered true)))

;; Rule 19
(defrule Rule19
  (rule19-triggered true)
  (cat (eyes yellow))
  =>
  (printout t crlf "This cat with yellow eyes may be an Egyptian Mau." crlf)
  (assert (mau true)))

;; Rule 20
(defrule Rule20
  (mau true)
  =>
  (printout t crlf "This cat is an Egyptian Mau." crlf)
  (assert (rule21-triggered true)))

;; Rule 21
(defrule Rule21
  (rule21-triggered true)
  (cat (size large))
  =>
  (printout t crlf "This large cat may be a Maine Coon." crlf)
  (assert (maine-coon true)))