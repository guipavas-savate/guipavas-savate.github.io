
#let prix = yaml("../_data/prix.yml")

#set page(margin: (top: 10mm, bottom: 10mm, right: 10mm, left: 10mm))
#set text(12pt)
//#set par(justify: true)

#let checkbox() = box(stroke: 0.1mm+black, width: 3mm, height: 3mm)
#let dots(width: 1fr) = box(width: width, repeat[.])

#table(
  columns: (1fr, 3fr, 1fr),
  align: (horizon+left, horizon+center, horizon+right),
  inset: 0pt,
  stroke: none,
  image("../images/logo-rond.png"),
  image("../images/guipavas-savate-noir.png", width: 100%),
  image("../images/logo-rond.png"),
)

#text(size: 30pt)[Fiche d’inscription saison #prix.saison/#(prix.saison+1) ]

#grid(
  inset: 3mm,
  columns: (1fr, 1fr, 1fr),

  [Nom: #dots()],
  [Prénom: #dots()],
  [#checkbox() Homme #h(5mm) #checkbox() Femme],

  [Date de naissance: #dots()],
  grid.cell(colspan: 2)[Lieu de naissance: #dots() ],
  
  grid.cell(colspan: 3)[Adresse: #dots()],
  
  grid.cell(colspan: 1)[Code Postal: #dots()],
  grid.cell(colspan: 2)[Ville: #dots()],
  
  grid.cell(colspan: 1)[Téléphone: #dots()],
  grid.cell(colspan: 2)[Email: #dots()],
)

- Savate: 
  - #checkbox() Enfants (6-14 ans) #prix.jeune€
  - #checkbox() Adultes (15 ans et plus) #prix.adulte€
- #checkbox() Anglaise #prix.anglaise€
- #checkbox() Cardio Boxing #prix.cardio€

Le prix de la cotisation comprend la #underline[licence FFSbf] ainsi qu'un #underline[tee-shirt du club]. Il est possible de payer en 3 fois.

Un certificat médical est obligatoire, pour la pratique de la boxe française.

Je soussigné(e), (Prénom Nom) #dots(width: 5cm) certifie avoir pris connaissance du règlement intérieur de l’association et m’engage à le respecter.

#v(5mm)
#line(length: 100%, stroke: 0.1mm)

#v(5mm)
#text(size: 24pt)[Autorisation parentale] #text(size: 18pt)[(pour les mineurs)]
#v(1fr)

Je soussigné(e), M ou Mme #dots(width: 9cm) autorise ma fille/mon fils #dots(width: 9cm) à pratiquer la Savate Boxe française au sein du club Guipavas Savate Boxe Française, et éventuellement à être transporté dans le cadre de déplacements (compétitions ou autres).

Téléphone des parents : #dots()

Email des parents : #dots()

#v(5mm)

#grid(
  inset: 3mm,
  columns: (1fr, 1fr),
  [Date: #dots()], [Signature :]
)


#v(1cm)