library(rvest)
text<- NULL
url<- "https://movie.daum.net/moviedb/grade?movieId=131576"
text <- read_html(url)
text

# 영화평점
nodes <- html_nodes(text,".emph_grade")
point <- html_text(nodes)
point

# 영화리뷰 
nodes <- html_nodes(text, "p.desc_review")
imsi <- html_text(nodes, trim=TRUE)
review <- imsi[nchar(imsi) > 0] 

review
page <- cbind(point, review)
write.csv(page, "movie_reviews.csv")
