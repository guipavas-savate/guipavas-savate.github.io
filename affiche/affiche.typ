#import "@preview/cades:0.3.0": qr-code

#set page(margin: (top: 3mm, bottom: 3mm, right: 5mm, left: 5mm))

#set align(center)
#set text(font: "Avenir", size: 14pt)
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

#underline(
  text(size: 32pt, weight: "extrabold")[Savate Boxe Française]
)

#let jour(content) = text(size: 20pt, weight: "extrabold", content)

#let discipline(str) = {
  let color = gray
  if str == "Savate" {
    color = yellow
  } else if str == "CardioBoxing" {
    color = green
  } else if str == "Anglaise" {
    color = red
  }
  box(
    fill: color, radius: 4mm, inset: 2mm, 
    text(weight: "bold", str)
  )
}

#let public(str) = {
  text(weight: "bold", str)
}

#let savate() = discipline("Savate")
#let cardio() = discipline("CardioBoxing")
#let anglaise() = discipline("Anglaise")

#let adultes() = text(weight: "bold")[Adultes]
#let enfants() = text(weight: "bold")[Enfants]
#let adolescents() = text(weight: "bold")[Adolescents]
#let tous() = text(weight: "bold")[Tous Publics]

#let kangourou() = image("../images/Kangourou.png", height: 13mm)

#let horaires = yaml("../_data/horaires.yml")
#let cells = ()
#cells.push(table.hline(start: 0))

#for day in horaires {
  let name = day.keys().at(0)
  let elements = day.values().flatten()
  
  cells.push(table.cell(rowspan: elements.len(), jour(name)))

  for element in elements {

    let columns = ()
    let cells2 = ()
    
    columns.push(1fr)
    cells2.push(discipline(element.discipline))

    let note = element.note.trim()
    if element.note.len() > 0 {
      columns.push(auto)
      cells2.push(table.cell(rowspan: 2, box(
        fill: aqua, radius: 6mm, inset: 3mm, 
        text(weight: "bold", note)
      )))
    }
    if element.ecole {
      columns.push(auto)
      cells2.push(table.cell(rowspan: 2, kangourou()))
    }
    cells2.push(element.niveau)

    cells.push(
        table(
          columns: columns,
          stroke: none,
          inset: 2pt,
          ..cells2
        )
    )
   
    cells.push([
      #public(element.public) \ 
      #element.age
    ])
    cells.push([
      de #element.horaireDebut \ 
      à #element.horaireFin
    ])
    cells.push(table.hline(start: 0))
  }
  
}

#table(
  columns: (1fr, 2fr, auto, auto),
  align: (horizon+left, horizon+left, horizon+left, horizon+right),
  inset: (x: 10pt, y: 4pt),
  stroke: none,
  ..cells
)


#set text(size: 22pt)
 
#text(size: 32pt, weight: "extrabold")[Salle du Douvez à Guipavas] \
#text(fill: blue, weight: "extralight")[Ethique - Esthétique - Efficace - Educative] \ 

#table(
  columns: (1fr, 3fr, 1fr),
  align: (horizon+left, horizon+center, horizon+right),
  inset: 0pt,
  stroke: none,
  qr-code("https://www.guipavas-savate.fr"),
  [
  Contact: Sylvain Le Stanc \
  06 61 56 08 83 \
  #underline[guipavas.savate\@hotmail.com] \
  \@guipavas_savate \
  #underline[https://www.guipavas-savate.fr]
  ],
  image("../images/logo-ffsavate.jpg"),
)
