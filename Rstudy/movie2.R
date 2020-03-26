site<- "https://movie.daum.net/moviedb/grade?movieId=127122&type=netizen&page="
text <- NULL
movie.review <- NULL
for(i in 1: 20) { 
  url <- paste(site, i, sep="")
  text <- read_html(url)
  nodes <- html_nodes(text, ".emph_grade")
  point <- html_text(nodes)
  nodes <- html_nodes(text, "p.desc_review")
  imsi <- html_text(nodes, trim=TRUE)
  review <- imsi[nchar(imsi) > 0] 
  page <- cbind(point, review)
  movie.review <- rbind(movie.review, page)
}
write.csv(movie.review, "daummovie2.csv")