text<- NULL
url<- "https://comic.naver.com/genre/bestChallenge.nhn"
text <- read_html(url)
text

# comicName
nodes <- html_nodes(text,"div.challengeInfo > h6 > a")
comicName <- html_text(nodes)
comicName

# comicSummary
nodes <- html_nodes(text, "div.challengeInfo > div.summary")
comicSummary <- html_text(nodes)
comicSummary

# comicGrade
nodes <- html_nodes(text, "div.challengeInfo > div.rating_type > strong")
comicGrade <- html_text(nodes)
comicGrade

page <- data.frame(comicName, comicSummary, comicGrade)
write.csv(page, "navercomic.csv")


