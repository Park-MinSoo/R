hotel <- readLines("data/hotel.txt")

hotel_n <- extractNoun(hotel)

undata <- unlist(hotel_n)

undata2 <- gsub("[[:lower:]]","",undata)
undata3 <- gsub("[[:upper:]]","",undata2)
undata4 <- gsub("[[:punct:]]","",undata3)
undata5 <- Filter(function(x) {nchar(x) >= 2}, undata4)
undata5

word_table <- table(undata5)
word_table

final <- sort(word_table, decreasing = T)
final <- head(final, 10)
final
write.csv(final,"hotel_top_word.csv")




