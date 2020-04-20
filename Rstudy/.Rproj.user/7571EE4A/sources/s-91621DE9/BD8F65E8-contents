library(dplyr)
library(Kormaps)
library(leaflet)

DONG<-read.csv('data/one.csv')
View(DONG)

k3 <- korpopmap3
k3@data[c("C행정구역별_읍면동", "행정구역별_읍면동")]
View(k3@data)

# 강남구 1인 가구 뽑기
k3@data$name<-gsub('·','',k3@data$name) # 동목록 에서 . 을 빼서 다시 담음
View(k3@data$name)

colnames(DONG)<-c('구별','name','일인가구') # DONG 칼럼명 재설정
View(DONG)

dong <- DONG %>%filter(구별=='강남구')

k3@data<-merge(k3@data,dong,by.x='name',sort=FALSE)
mymap <- k3@data

mypalette <- colorNumeric(palette ='Set3' , domain = k3@data$'일인가구')
mypopup <- paste0(mymap$name,'<br> 1인가구: ',k3@data$'일인가구')

map7 <- NULL
map7<-leaflet(k3) %>% 
  addTiles() %>% 
  setView(lat=37.52711, lng=126.987517, zoom=12) %>%
  addPolygons(stroke =FALSE,
              fillOpacity = .7,
              popup = mypopup,
              color = ~mypalette(k3@data$일인가구)) %>% 
  addLegend( values = ~k3@data$일인가구,
             pal = mypalette ,
             title = '인구수',
             opacity = 1)
map7	
View(map7)

saveWidget(map7, file="oneMap.html")

