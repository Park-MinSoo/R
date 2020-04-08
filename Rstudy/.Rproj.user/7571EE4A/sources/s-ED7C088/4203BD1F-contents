library(rvest)

url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url) 
text

#<h1> 태그의 컨텐츠
nodes <- html_nodes(text, "h1")
title <- html_text(nodes)
title

#<a> 태그의 컨텐츠와 href 속성값
node1 <- html_nodes(text, "a")
aaa <- html_text(node1)
bbb <- html_attr(node1, "href")
aaa; bbb

#<img> 태그의 src 속성값 
nodeimg <- html_nodes(text, "img")
img <- html_attr(nodeimg, "src")
img

#첫 번째 <h2> 태그의 컨텐츠
nodeh2 <- html_nodes(text, "h2:nth-of-type(1)")
h2a <- html_text(nodeh2)
h2a

#<ul> 태그의 자식 태그들 중 style 속성의 값이 green으로 끝나는 태그의 컨텐츠
nodeul <- html_nodes(text, "ul>*[style $= green]") # $= 속성자 끝의 값을 찾아낸다.
green <- html_text(nodeul)
green

#두 번째 <h2> 태그의 컨텐츠
nodeh22 <- html_nodes(text, "h2:nth-of-type(2)")
h2b <- html_text(nodeh22)
h2b

#<ol> 태그의 모든 자식 태그들의 컨텐츠
nodeol <- html_nodes(text, "ol>*")
food <- html_text(nodeol)
food

#<table> 태그의 모든 자손 태그들의 컨텐츠
nodetable <- html_nodes(text, "table>*>*")
tb <- html_text(nodetable)
tb

#name 이라는 클래스 속성을 갖는 <tr> 태그의 컨텐츠
nodetr <- html_nodes(text, "tr[class = name]")
trrr <- html_text(nodetr)
trrr

#target 이라는 아이디 속성을 갖는 <td> 태그의 컨텐츠
nodetd <- html_nodes(text, "td[id = target]")
tddd <- html_text(nodetd)
tddd
