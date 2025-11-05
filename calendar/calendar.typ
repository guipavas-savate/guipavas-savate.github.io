#import "@preview/tiaoma:0.3.0"
#import "@preview/cmarker:0.1.6"

#let source = yaml("../_data/calendar.yml")

#let calendarHeader(calendar, ) = {
  grid(
    columns: (1fr, 2fr, 1fr), 
    align: horizon+center,
    image("../images/logo-rond.png"), 
    block[
      #image("../images/guipavas-savate-noir.png", height: 2cm)
      #v(.3cm)
      #align(center, underline(text(size: 18pt, weight: "bold",calendar.title)))
    ], 
    tiaoma.qrcode("https://www.guipavas-savate.fr/calendrier.html", options: (scale: 3.0)),
  )
}

#let monthTitle(color: blue, content) = rect(
  fill: rgb(color), stroke: rgb(color), inset: 10pt, radius: .1cm, width: 100%,
  align(center, text(fill: white, stroke:white, size: 12pt, content))
)

#let month(month) = {
  //let toMarkup(str) = eval(str, mode: "markup")
  let toMarkup(str) = cmarker.render(str)
  let extractFields((date, name, place))= (date, name, place)

  block(breakable: false, above: 1cm)[
    #monthTitle(color: month.color, month.title)
    #grid(
      columns: (auto,2fr,auto), inset: .3cm, 
      align: (horizon+left, horizon+center, horizon+center),

      ..month.events.map(extractFields).flatten().map(toMarkup)
    )
  ]
}

#let calendarA4(source, start: none) = {
  set page(
    paper: "a4", flipped: true,
    margin: (top: 5cm, left: .5cm, right: .5cm, bottom: .5cm),
    columns: 2,
    header: calendarHeader(source), header-ascent: .5cm
  )

  set par(
    spacing: .1cm
  )

  set text(13pt)


  let print = start == none
  for monthData in source.months {
    if start != none and monthData.number == start { print = true }
    if print { month(monthData) }
  }

}

#let calendarA5(source, start: none) = {
    set page(
    paper: "a5",
    margin: (top: 5cm, left: .5cm, right: .5cm, bottom: .5cm),
    //columns: 2,
    header: calendarHeader(source), header-ascent: .5cm
  )

  set par(
    spacing: .1cm
  )

  set text(13pt)

  let print = start == none
  for monthData in source.months {
    if start != none and monthData.number == start { print = true }
    if print { month(monthData) }
  }
}


#let calendarHtml(source, start: none) = {
  /*
    set page(
    paper: "a5",
    margin: (top: 5cm, left: .5cm, right: .5cm, bottom: .5cm),
    //columns: 2,
    header: calendarHeader(source), header-ascent: .5cm
  )
*/
  set par(
    spacing: .1cm
  )

  set text(13pt)

  let print = start == none
  for monthData in source.months {
    if start != none and monthData.number == start { print = true }
    if print { month(monthData) }
  }

}
