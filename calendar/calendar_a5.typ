#import "calendar.typ": calendarA5

#let source = yaml.decode(read("../_data/calendar.yml"))
#calendarA5(source)
