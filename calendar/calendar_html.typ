#import "calendar.typ": calendarHtml

#let source = yaml("../_data/calendar.yml")
#calendarHtml(source, start: datetime.today().month())
