mpg <- as.data.frame(ggplot2::mpg)
midwest <- as.data.frame(ggplot2::midwest)
#문제 1
ggplot(mpg, aes(x=cty, y=hwy)) + geom_point(size=2, color="blue")
ggsave("result1.png")

#문제 2
ggplot(mpg, aes(x=class)) + geom_bar(aes(fill=drv), alpha=1.0)
ggsave("result2.png")

#문제 3
options(scipen = 99)
ggplot(midwest, aes(x=poptotal, y=popasian)) + geom_point(size=1) + coord_cartesian(xlim=c(0, 500000),ylim=c(0, 10000))
ggsave("result3.png")

#문제 4
ctt <- mpg %>% filter(class=="compact" | class=="subcompact" | class=="suv")
ggplot(data = ctt, aes(x = class, y = cty)) + geom_boxplot()
ggsave("result4.png")

#문제 5
log <- read.table("data/product_click.log")
count <- table(log$V2)
count <- as.data.frame(count)
ggplot(data=count, aes(x=Var1, y=Freq)) + geom_bar(aes(fill=Var1), stat="identity") +
    labs(x="V2", y="count")
ggsave("result5.png")


#문제 6
log <- read.table("data/product_click.log")
V1 <- log$V1
V1
date5 <- substr(V1,1,8)
date5

# 추출한 로그 날짜로 포맷화
date55 <- as.Date(date5, format="%Y%m%d")

# 해당요일 추출
dayday <- format(date55, "%A")
dayday

day <- as.data.frame(dayday)
finday <- table(day)
finday <- as.data.frame(finday)
finday
ggplot(data=finday, aes(x=day, y=Freq)) + geom_bar(aes(fill=day), stat="identity") + labs(x="요일", y="클릭수") + theme_linedraw()
ggsave("result6.png")


























