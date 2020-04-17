# 문제 1
library(dplyr)
library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)
View(mpg)
plot(mpg$cty, mpg$hwy, xlab="도시연비", ylab="고속도로연비", type="p", pch=3)

#문제 2
countNum <- table(mpg$drv)
barplot(countNum, col = rainbow(3))

#문제 3
ymax<-40
boxplot(hwy~manufacturer,data=mpg, main="*제조사별 고속도로 연비*",col.main="magenta",
        col = heat.colors(17),
        las =2,ylim=c(5, ymax),
        xlab="", ylab="고속도로연비")

