#문제 1

register_google(key='AIzaSyD8k2DWC_7yFHCrH6LDR3RfITsmWMEqC8c')

mk <- geocode(enc2utf8("은평"), source = "google")
cen <- c(mk$lon, mk$lat)

sec <- format(Sys.time(), "%S") # 현재 초를 뽑아서 sec에 담는다.
sec

if (sec >=0 & sec<=14) {
  map <- get_googlemap(center=cen, maptype="terrain",zoom=16, marker=mk)
  Sys.sleep(1)
  ggmap(map)
}
if (sec >=15 & sec<=29){
  map <- get_googlemap(center=cen, maptype="satellite",zoom=16, marker=mk)
  Sys.sleep(1) 
  ggmap(map)
}
if (sec >=30 & sec<=44){
  map <- get_googlemap(center=cen, maptype="roadmap",zoom=16, marker=mk)
  Sys.sleep(1)
  ggmap(map)
}
if (sec >=45 & sec<=59){
  map <- get_googlemap(center=cen, maptype="hybrid",zoom=16, marker=mk)
  Sys.sleep(1)
  ggmap(map)
}
ggmap(map)+labs(title="박민수동네", x="경도", y="위도") + geom_text(aes(x=mk$lon, y=mk$lat, label="박민수동네", vjust=0, hjust=0))
ggsave("mymap.png")
