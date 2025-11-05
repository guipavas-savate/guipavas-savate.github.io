#import "calendar.typ": calendarA5


#let source = yaml("../_data/calendar.yml")
#calendarA5(source, start: datetime.today().month())
