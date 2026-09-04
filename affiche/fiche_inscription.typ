
#let prix = yaml("../_data/prix.yml")

#set page(margin: (top: 5mm, bottom: 5mm, right: 10mm, left: 10mm))
#set text(12pt)
//#set par(justify: true)

#let checkbox() = {
  box(stroke: 0.1mm+black, width: 3mm, height: 3mm)
  h(2mm)
}

#let dots(width: 1fr) = box(width: width, repeat[.])

#table(
  columns: (1fr, 3fr, 1fr),
  align: (horizon+left, horizon+center, horizon+right),
  inset: 0pt,
  stroke: none,
  image("../images/logo-rond.png", height: 30mm),
  image("../images/guipavas-savate-noir.png", width: 78%),
  image("../images/logo-rond.png", height: 30mm),
)

#text(size: 30pt)[Fiche d’inscription saison #prix.saison/#(prix.saison+1) ]

#grid(
  //inset: 3mm,
  columns: (1fr, 1fr, 1fr),
  gutter: 5mm,

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
  grid.cell(colspan: 3)[
    #checkbox() Cochez cette case autorise l’association Guipavas Savate Boxe Française à utiliser mon image pour promouvoir l’activité dans le cadre de ses locaux, sur les journaux, flyers ainsi que sur la page web de l’association.
  ],
)

#table(
  columns: (1fr, 1fr),
  rows: (12mm),
  //align: (horizon, horizon+center),
  inset: 3mm,
  stroke: 0.1mm,
  table.cell(rowspan: 2)[
  Savate (inclut les cours d'anglaises et de cardio): 
  - #checkbox() Enfants (6-14 ans) #prix.jeune€
  - #checkbox() Adultes (15 ans et plus) #prix.adulte€
  ],
  [#checkbox() Anglaise #prix.anglaise€],
  [#checkbox() Cardio Boxing #prix.cardio€]
)


Le prix de la cotisation comprend la #underline[licence FFSbf] ainsi qu'un #underline[tee-shirt du club]. Il est possible de payer en 3 fois.
Un #text(weight: "bold")[certificat médical est obligatoire], pour la pratique de la boxe française.

Je soussigné(e), (Prénom Nom) #dots(width: 5cm) certifie avoir pris connaissance du règlement intérieur de l’association et m’engage à le respecter.


#grid(
  inset: 3mm,
  columns: (1fr, 2fr),
  [Date: #dots()], [Signature :]
)

#v(1fr)
#line(length: 100%, stroke: 0.1mm)
#v(2mm)

#text(size: 30pt)[Autorisation parentale] #text(size: 18pt)[(pour les mineurs)]
#v(1fr)

Je soussigné(e), M ou Mme #dots(width: 9cm) autorise ma fille/mon fils #dots(width: 9cm) à pratiquer la Savate Boxe française au sein du club Guipavas Savate Boxe Française, et éventuellement à être transporté dans le cadre de déplacements (compétitions ou autres).

Téléphone des parents : #dots()

Email des parents : #dots()

#v(5mm)

#grid(
  inset: 3mm,
  columns: (1fr, 2fr),
  [Date: #dots()], [Signature :]
)


#v(1cm)