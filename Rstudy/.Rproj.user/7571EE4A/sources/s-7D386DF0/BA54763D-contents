library(RJDBC)
library(DBI)
library(ggplot2)
library(dplyr)

drv <- JDBC("oracle.jdbc.driver.OracleDriver","C:/hardy/ojdbc6.jar")
conn <- dbConnect(drv,"jdbc:oracle:thin:@localhost:1521:xe","jdbctest","jdbctest")
conn 

colnames(iris)<-c('SLENGTH','SWIDTH','PLENGTH','PWIDTH', 'SPECIES')
View(iris)

dbWriteTable(conn,"iris",iris)

irisdb <-dbReadTable(conn,"iris")
irisdb

# 시각화 구현
ggplot(data = irisdb, aes(x = SLENGTH, y = SWIDTH, col = SPECIES)) + geom_point()
ggsave("db1.jpg")
ggplot(data = irisdb, aes(x = PLENGTH, y = PWIDTH, col = SPECIES)) + geom_point()
ggsave("db2.jpg")
