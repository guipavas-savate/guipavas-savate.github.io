#import "@preview/cades:0.3.1": qr-code

#let pink = rgb(226, 110, 121)
#let bg = rgb("#b5d2e7")

#set page(
  margin: (top: 3mm, bottom: 3mm, right: 5mm, left: 5mm),
  fill: bg,
)

#set align(center)
#set text(font: "Avenir", size: 20pt)
#set par(spacing: 10pt)

#table(
  columns: (auto, 4fr, auto),
  align: (horizon+left, horizon+center, horizon+right),
  inset: 0pt,
  stroke: none,
  image("../images/logo-rond.png", height: 100pt),
  image("../images/guipavas-savate-noir.png", width: 60%),
  image("../images/logo-rond.png", height: 100pt),
)

#v(1fr)

#text(size: 64pt)[
  #block(
      fill: pink, radius: 4mm, inset: 8mm, 
      text(weight: "bold", "Cardio Boxing")
  )

]
#text(weight: "extrabold", size: 32pt)[Le Mardi de 18h30 à 19h45]

#v(1fr)

#image("cardioboxing-illustration.png")

#v(1fr)

#text(size: 24pt, fill: pink, weight: "bold")[
  Pour tous, se retrouver pour transpirer\ dans une ambiance détendue.
]  

#v(1fr)


#set text(size: 22pt) 
#table(
  columns: (auto, 1fr),
  align: (horizon+center, horizon+center),
  inset: 0pt,
  stroke: none,
  qr-code("https://www.guipavas-savate.fr", height: 100pt),
  [
  #text(weight: "bold")[Salle du Douvez à Guipavas] \
  #underline[Éric]: 07 83 19 78 64 \
  #underline[guipavas.savate\@hotmail.com] \
  #underline[https://www.guipavas-savate.fr]
  ]
)
