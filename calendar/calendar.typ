#import "@preview/cades:0.3.0": qr-code

#let source = yaml.decode(read("../_data/calendar.yml"))

#let calendarHeader(calendar) = {
  grid(
    columns: (4cm, 1fr, 4cm), 
    align: (horizon+left, horizon+center, horizon+right),
    image("../images/logo-rond.png"), 
    block[
      #image("../images/guipavas-savate-noir.png", height: 3cm)
      #v(.3cm)
      #align(center, underline(text(size: 36pt, weight: "bold",calendar.title)))
    ], 
    //image("../images/logo-rond.png"), 
    qr-code("https://www.guipavas-savate.fr/calendrier.html")
  )
}

#set page(
  paper: "a4",
  margin: (top: 8cm, left: 1cm, right: 1cm),
  header: calendarHeader(source),
)

#set par(
  spacing: .3cm
)

#set text(16pt)


#let monthTitle(color: blue, content) = rect(
  fill: rgb(color), stroke: rgb(color), inset: 10pt, radius: .1cm, width: 100%,
  align(center, text(fill: white, size: 20pt, content))
)

#let month(month) = {
  let toMarkup(str) = eval(str, mode: "markup")
  let extractFields((date, name, place))= (date, name, place)

  block(breakable: false, above: 1cm)[
    #monthTitle(color: month.color, month.title)
    #grid(
      columns: (auto,1fr,auto), inset: .3cm, 
      align: (horizon+left, horizon+center, horizon+right),

      ..month.events.map(extractFields).flatten().map(toMarkup)
    )
  ]
}

#let calendar(calendar) = {
  for monthData in calendar.months {
    month(monthData)
  }
}

#calendar(source)
