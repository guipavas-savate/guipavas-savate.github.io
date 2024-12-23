#import "calendar.typ": calendarA4

#let source = yaml.decode(read("../_data/calendar.yml"))
#calendarA4(source)
