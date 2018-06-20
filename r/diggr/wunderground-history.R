#https://www.wunderground.com/history/airport/KCHO/2018/1/18/DailyHistory.html?req_city=Stanardsville&req_state=VA&reqdb.zip=22973

uriSep <- "/"
uriBase <- "https://www.wunderground.com/history/airport"
uriAirport <- "KCHO"
uriStart <- "2017/1/1"
uriEnd <- "2017/12/31"
uriHtml <- "DailyHistory.html"
uriQuery <- "?req_city=Stanardsville&req_state=VA&reqdb.zip=22973"

# mess with dates...
uriDateStart <- as.Date(uriStart)
uriDateEnd <- as.Date(uriEnd)
dateRange <- uriDateStart:uriDateEnd
if ((c(range(dateRange)[1], range(dateRange)[2]) == c(min(dateRange), max(dateRange)))[1]==(c(range(dateRange)[1], range(dateRange)[2]) == c(min(dateRange), max(dateRange)))[2])
 print("Numeric dates represent number of days since a given origin date.")

# build first test query string
uriQ <- paste0(paste(uriBase, uriAirport, as.character(uriStart), uriHtml, sep=uriSep), uriQuery)