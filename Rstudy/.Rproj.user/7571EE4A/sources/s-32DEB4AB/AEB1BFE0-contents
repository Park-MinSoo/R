# Leaflet 실습

hm <- geocode(enc2utf8('우물골 두산위브 7단지 아파트'), source = 'google')

df <- data.frame(lon=hm$lon,
                 lat=hm$lat)

msg <- '<strong>박민수의 집</strong><hr>박민수(남,26세)가 살고있는곳'
map <- leaflet() %>% setView(lng = hm$lon, lat = hm$lat, zoom = 18) %>% addTiles() %>% 
  addCircles(lng = hm$lon, lat = hm$lat, color='Red', popup = msg )
map

install.packages("htmlwidgets")
library(htmlwidgets)
saveWidget(map, file="mymap.html")


