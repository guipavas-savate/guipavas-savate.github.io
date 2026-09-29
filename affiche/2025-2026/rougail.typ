#import "@preview/iconic-salmon-fa:1.1.0": *
#import "@preview/curvly:0.1.0": *
#import "@preview/cades:0.3.1": qr-code

#let accent = rgb(182, 0, 0, 150)
#let second = rgb("#f19d3d")

#set page(margin: (top: 0mm, bottom: 0mm, right: 0mm, left: 0mm))

#set text(font: "Noteworthy", size: 16pt, fill: white, weight: "bold")
#set align(center)
#set par(spacing: 10pt)

#let bannerBrushSvg = read("paint-banner.svg")
#let bannerBrushtext(width: relative, height: relative, stroke: color, fill: color, str) = {

  let o = color.to-hex(fill)
  let actualBanner = bannerBrushSvg.replace("style=\"fill:#000000\"", "style=\"fill:"+ o +"\"")
  block({
    scale(
      y: -100%,
      image(
        bytes(actualBanner), 
        width: width, height: height, 
        fit: "stretch", 
      )
    )
    place(
      center + horizon,
      text(
        stroke: stroke, fill: stroke, weight: "bold",
        text-on-arc(str, width - 15mm, -11deg)
      )
    )
  })
}

#let roundBrushSvg = read("round-brush.svg")
#let roundBrushtext(size: relative, stroke: color, fill: color, content) = {

  let o = color.to-hex(fill)
  let actualBrush = roundBrushSvg.replace("fill=\"#ffb127\"", "fill=\""+ o +"\"")
  block({
    image(bytes(actualBrush), width: size, height: size, fit: "stretch", )
    place(
      center + horizon, 
      text(stroke: white, fill: white, content)
    )
  })
}

#place(
  center + horizon,
  //dy: 15mm,
  image("rougail-fond.png", height: 100%)
)

#v(5mm)

#grid(
  columns: (1fr, 2fr, 1fr),
  [],
  image("../../images/guipavas-savate-blanc.png", width: 100%),
  image("../../images/logo-rond.png", width: 40mm),
)

#text(fill: white, size: 36pt)[organise  une vente de]

#image("rougail-titre.png", width: 75%)

#place(
  right + horizon,
  dx: -5mm, dy: -10mm,
  roundBrushtext(size: 60mm, stroke: white, fill: accent)[
    #rotate(-10deg)[
      #text(size: 56pt, weight: "extrabold")[10€ \ ]
      #text(size: 24pt)[la part]
    ]
  ]
)

#v(50mm)

//#v(10mm)

#grid(
  columns: (3fr, 4fr, 6fr),
  align: (center+horizon),
  fill: accent,
  inset: 5mm,
  grid(
    columns: (auto, 1fr),
    align: (center, left),
    gutter: 5mm,
    text(size: 40pt, fa-map-pin()),
    [
    Salle du Douvez \
    Guipavas
    ]
  ),
  
  grid(
    columns: (auto, 1fr),
    align: (center, left),
    gutter: 5mm,
    text(size: 40pt, fa-calendar-day()),
    [
    Le samedi 21
    *novembre* 2026
    ]
  ),
grid(
    columns: (auto, 1fr),
    align: (center, left),
    gutter: 5mm,

    grid.cell(rowspan: 2, text(size: 40pt, fa-clock())),
    text()[#underline[À emporter:] *17h30 à 19h*],
    
    text()[#underline[Sur place:] *à partir de 19h*],
  ),
)

#bannerBrushtext(
  width: 130mm, height: 18mm, 
  //fill: accent, stroke: white,
  fill: second, stroke: white,
  "Réservations pour le 19 novembre"
)

#grid(
  columns: (1fr, 1fr, 1fr),
  align: (horizon+center),
  roundBrushtext(size: 40mm, stroke: white, fill: second)[
    #rotate(10deg)[
      Sur place ou\
      à emporter
    ]
  ],
  roundBrushtext(size: 50mm, stroke: white, fill: accent)[
    Pour commander \
    Scanner le QR code
  ],
  qr-code("https://www.helloasso.com/associations/guipavas-savate-boxe-francaise/boutiques/rougail-saucisse-novembre-2026", height: 40mm, background: second, color: white)
)
