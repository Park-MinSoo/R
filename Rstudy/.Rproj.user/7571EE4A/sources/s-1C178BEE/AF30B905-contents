yes24 <- readLines("yes24.txt")

yes24_n <- extractNoun(yes24)

undata <- unlist(yes24_n)

undata2 <- gsub("[[:lower:]]","",undata)
undata3 <- gsub("[[:upper:]]","",undata2)
undata4 <- gsub("[[:punct:]]","",undata3)
undata5 <- gsub("[[:digit:]]","",undata4)
undata6 <- Filter(function(x) {nchar(x) >= 2 & nchar(x) <= 4}, undata5)
undata6

bindo <- table(undata6)
result <- sort(bindo, decreasing = T)

result <- wordcloud2(result, fontFamily = "휴먼옛체")

saveWidget(result,"wc.html",title="WORDCLOUD2 실습",selfcontained = F)

