#import "calendar.typ": calendarHtml

#let source = yaml.decode(read("../_data/calendar.yml"))
#calendarHtml(source)
