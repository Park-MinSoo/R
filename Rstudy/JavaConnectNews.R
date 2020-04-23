library(rvest)
library(dplyr)
text<- NULL
url<- "http://media.daum.net/ranking/popular/"
text <- read_html(url)
text

# newstitle
nodes <- html_nodes(text,"#mArticle > div.rank_news > ul.list_news2 > li > div.cont_thumb > strong > a.link_txt")
newstitle <- html_text(nodes)
newstitle <- newstitle %>% head(5)
newstitle <- gsub(",","",newstitle)
newstitle


# newspapername
nodes <- html_nodes(text, "span.info_news")
newspapername <- html_text(nodes, trim=TRUE)
newspapername <- newspapername %>% head(5)
newspapername

page <- data.frame(newstitle, newspapername)
