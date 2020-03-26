text<- NULL
url<- "http://media.daum.net/ranking/popular/"
text <- read_html(url)
text

# newstitle
nodes <- html_nodes(text,"#mArticle > div.rank_news > ul.list_news2 > li > div.cont_thumb > strong > a.link_txt")
newstitle <- html_text(nodes)
newstitle

# newspapername
nodes <- html_nodes(text, "span.info_news")
newspapername <- html_text(nodes, trim=TRUE)
newspapername

page <- data.frame(newstitle, newspapername)
write.csv(page, "daumnews.csv")


