#import "@preview/cades:0.3.0": qr-code

#set page(margin: (top: 3mm, bottom: 3mm, right: 5mm, left: 5mm))

#set align(center)
#set text(font: "Avenir", size: 20pt)
#set par(spacing: 10pt)

#table(
  columns: (1fr, 3fr, 1fr),
  align: (horizon+left, horizon+center, horizon+right),
  inset: 0pt,
  stroke: none,
  image("../images/logo-rond.png"),
  image("../images/guipavas-savate-noir.png", width: 100%),
  image("../images/logo-rond.png"),
)

#v(1fr)

#text(size: 32pt)[
  #block(
      fill: green, radius: 4mm, inset: 5mm, 
      text(weight: "bold", "Cardio Boxing")
  )

  #text(weight: "extrabold")[Le Mardi de 18h30 à 19h30]
]

#v(1fr)

#image("cardioboxing-illustration.png")

#v(1fr)

#text(size: 28pt, fill: blue, weight: "extralight")[S'amuser - Se défouler - Se retrouver - Suer] \ 

#v(1fr)

#text(size: 28pt, weight: "extrabold")[Salle du Douvez à Guipavas] \
    

#set text(size: 22pt) 
#table(
  columns: (1fr, 3fr, 1fr),
  align: (horizon+left, horizon+center, horizon+right),
  inset: 0pt,
  stroke: none,
  qr-code("https://www.guipavas-savate.fr"),
  [
  Sylvain Le Stanc: 06 61 56 08 83 \
  #underline[guipavas.savate\@hotmail.com] \
  #underline[https://www.guipavas-savate.fr]
  ],
  image("../images/logo-ffsavate.jpg"),
)
