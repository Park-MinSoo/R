# 교재 81페이지
library()
installed.packages()
search() #로드가 끝난 패키지들이다. (지금은 R이 기동될때 자동으로 load되는 애들이다.)
read_excel()
install.packages("readxl")
library(readxl) # require(readxl)
excel_data_ex <- read_excel("book/data_ex.xls")
getwd()
View(excel_data_ex)
search()
str(excel_data_ex)

# 웹 크롤링과 스크래핑

install.packages("rvest")
library(rvest)

url <- "http://unico2013.dothome.co.kr/crawling/tagstyle.html"
text <- read_html(url)  #html_document라는 객체를 리턴하고 있다.
text  #리스트로 객체처럼 만들고 있다.
str(text)

nodes <- html_nodes(text, "div")
nodes
title <- html_text(nodes) #html은 컨텐츠를 읽어준다. JavaScript의 innerHTML 같은 느낌.
title

node1 <- html_nodes(text, "div:nth-of-type(1)") #첫 번째 div태그를 잦는다.
node1
html_text(node1)
html_attr(node1, "style") # 스타일의 속성 값도 찾아준다.

node2 <- html_nodes(text, "div:nth-of-type(2)")
node2
html_text(node2)
html_attr(node2, "style") #2번째 div태그는 속성을 안가지고 있으므로 NA값이 출력된다.

node3 <- html_nodes(text, "div:nth-of-type(3)")
node3
html_text(node3)


# 단일 페이지(rvest 패키지 사용)
install.packages("rvest"); 
library(rvest)
text<- NULL
url<- "http://movie.naver.com/movie/point/af/list.nhn?page=1"
text <- read_html(url,  encoding="CP949")
text
# 영화제목
nodes <- html_nodes(text, ".movie")
title <- html_text(nodes)
title
# 영화평점
nodes <- html_nodes(text, ".title em")
point <- html_text(nodes)
point
# 영화리뷰 
nodes <- html_nodes(text, xpath="//*[@id='old_content']/table/tbody/tr/td[2]/text()")
imsi <- html_text(nodes, trim=TRUE)
review <- imsi[nchar(imsi) > 0] 
review
if(length(review) == 10) {
  page <- cbind(title, point)
  page <- cbind(page, review)
  write.csv(page, "movie_reviews.csv")
} else {
  cat("리뷰글이 생략된 데이터가 있네요ㅜㅜ\n")
}