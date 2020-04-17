gong <- readLines("data/공구.txt", encoding = "UTF-8")

gong_n <- extractNoun(gong)

undata <- unlist(gong_n)

undata2 <- gsub("[[:lower:]]","",undata)
undata3 <- gsub("[[:upper:]]","",undata2)
undata4 <- gsub("[[:punct:]]","",undata3)
undata5 <- gsub("[[:digit:]]","",undata4)
undata6 <- gsub("♥","",undata5)
undata7 <- gsub("공구.*","",undata6)
undata8 <- gsub("해주.*","",undata7)
undata9 <- Filter(function(x) {nchar(x) >= 2}, undata8)
undata9

bindo <- table(undata9)
final <- sort(bindo, decreasing = T)
head(final)
gong9 <- as.data.frame(final)
gong9
View(gong9)

png("wc.png",width=500, height=500)

windowsFonts(lett=windowsFont("휴먼옛체"))
final <- wordcloud(gong9$undata9, gong9$Freq, 
          min.freq = 2, 
          random.order = FALSE, 
          rot.per = 0.3, scale = c(4, 1), 
          colors = rainbow(7),random.color = T,
          family="lett")

dev.off()