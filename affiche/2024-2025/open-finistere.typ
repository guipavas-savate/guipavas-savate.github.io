#import "@preview/cades:0.3.0": qr-code

#set page(margin: (top: 3mm, bottom: 3mm, right: 5mm, left: 5mm))

#set align(center)
#set text(font: "Avenir", size: 15pt)
#set par(spacing: 10pt)

#v(1fr)
#text(size: 48pt, weight: "extrabold", font: "Phosphate")[
  Open du Finistère 2026 de\
  Savate Boxe Française
]

#v(2mm)

#text(size: 26pt)[
A partir de 11 heures. \
#text(weight: "bold")[Dimanche 1 ou 15 mars à Guipavas,] \
Salle Kercoco, 70 rue du commandant Challes.
]

#block({
  image("../../images/revert-nicolas.png", width: 80%)
  place(center + bottom, text(size: 20pt)[
    Entrée gratuite.\
    Pesée à 9h30.\
    Restauration sur place.\
  ])
})

#v(1fr)

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  align: (horizon+center),
  stroke: none,
  image("../../images/logo-rond.png"),
  image("../../images/logo-clubs-finistere/logo-crozon.png"),
  image("../../images/logo-clubs-finistere/logo-kbma.png"),
  image("../../images/logo-clubs-finistere/logo-lesneven.png"),
  image("../../images/logo-clubs-finistere/logo-plouneventer.png"),
)

#underline(link("https://www.guipavas-savate.fr/")[https://www.guipavas-savate.fr/])

#v(1fr)
