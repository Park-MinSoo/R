#문제 2
lib <- read.csv("data/지역별장애인도서관정보.csv",stringsAsFactors=F)
View(lib)
lib_add <- lib[,c(2, 9, 10)]
names(lib_add) <- c("libName", "lat", "lon")
View(lib_add)

map_seoul <- get_map(location="seoul", zoom=11, maptype="roadmap")       
ggmap(map_seoul)+geom_point(data=lib_add, aes(x=lon, y=lat), alpha=0.7, size=5, color="red") +
  geom_text(data=lib_add,               
              aes(x=lon,y=lat),               
              size=3,                
              label=lib_add$libName, vjust=0, hjust=-0.1) + guides(color=F)
ggsave("library.png")

