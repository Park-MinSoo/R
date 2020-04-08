# SNS의 Open API 활용
library(httr)
library(rvest)
library(XML)
library(httr)
rm(list=ls())
searchUrl<- "https://openapi.naver.com/v1/search/blog.xml"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"

query <- URLencode(iconv("봄","euc-kr","UTF-8"))
url <- paste0(searchUrl, "?query=", query, "&display=100")
doc <- GET(url, add_headers("Content_Type" = "application/xml",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))

# 블로그 내용에 대한 리스트 만들기		
doc2 <- htmlParse(doc, encoding="UTF-8")
text<- xpathSApply(doc2, "//item/description", xmlValue)
text # <b> 태그는 내가 직접 검색한 단어이기에 bold처리 되므로 다 나타나게 된다.
text <- gsub("</?b>", "", text)
#</?b> 는 정규표현식이다. <b> , </b>를 한번에 다 지우기 위해서. 
#정규표현식에서 ?는 바로 앞에 나온 문자 0번 또는 1번을 의미하게 된다.
# ex) a?b ---> ab, b
text <- gsub("&.+t;", "", text)
#여기서는 . 과 + 의 기능을 알아야 한다.
#정규표현식에서 . 은 임의의 문자를 뜻한다.
#정규표현식에서 + 는 한번 이상을 의미한다.
#정규표현식에서 * 는 0 이상을 뜻한다.
text

# 네이버 뉴스 연동  
searchUrl<- "https://openapi.naver.com/v1/search/news.xml"
Client_ID <- "izGsqP2exeThwwEUVU3x"
Client_Secret <- "WrwbQ1l6ZI"
query <- URLencode(iconv("코로나","euc-kr","UTF-8"))
url <- paste0(searchUrl, "?query=", query, "&display=100")
doc <- GET(url, add_headers("Content_Type" = "application/xml",
                            "X-Naver-client-Id" = Client_ID, "X-naver-Client-Secret" = Client_Secret))

# 네이버 뉴스 내용에 대한 리스트 만들기		
doc2 <- htmlParse(doc, encoding="UTF-8")
text<- xpathSApply(doc2, "//item/description", xmlValue); 
text
text <- gsub("</?b>", "", text)
text <- gsub("&.+t;", "", text)
text


# 트위터 글 읽어오기
install.packages("rtweet")
library(rtweet) 
appname <- "edu_data_collection"
api_key <- "RvnZeIl8ra88reu8fm23m0bST"
api_secret <- "wTRylK94GK2KmhZUnqXonDaIszwAsS6VPvpSsIo6EX5GQLtzQo"
access_token <- "959614462004117506-dkWyZaO8Bz3ZXh73rspWfc1sQz0EnDU"
access_token_secret <- "rxDWfg7uz1yXMTDwijz0x90yWhDAnmOM15R6IgC8kmtTe"
twitter_token <- create_token(
  app = appname,
  consumer_key = api_key,
  consumer_secret = api_secret,
  access_token = access_token,
  access_secret = access_token_secret)

key <- "코로나"
key <- enc2utf8(key)
result <- search_tweets(key, n=500, token = twitter_token)
str(result)
result$retweet_text
content <- result$retweet_text
content <- gsub("[[:lower:][:upper:][:digit:][:punct:][:cntrl:]]", "", content)   
content

# 버스 노선
library(XML)
API_key  <- "%2BjzsSyNtwmcqxUsGnflvs3rW2oceFvhHR8AFkM3ao%2Fw50hwHXgGyPVutXw04uAXvrkoWgkoScvvhlH7jgD4%2FRQ%3D%3D"
bus_No <- "402"
url <- paste("http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?ServiceKey=", API_key, "&strSrch=", bus_No, sep="")
doc <- xmlParse(url, encoding="UTF-8")
top <- xmlRoot(doc)
top
df <- xmlToDataFrame(getNodeSet(doc, "//itemList"))
df
str(df)
View(df)
busRouteId <- df$busRouteId
busRouteId




url <- paste("http://ws.bus.go.kr/api/rest/buspos/getBusPosByRtid?ServiceKey=", API_key, "&busRouteId=", busRouteId, sep="")
doc <- xmlParse(url, encoding="UTF-8")
top <- xmlRoot(doc)
top
df <- xmlToDataFrame(getNodeSet(doc, "//itemList"))
df
View(df)
# 서울시 빅데이터- XML 응답 처리
# http://openapi.seoul.go.kr:8088/796143536a756e69313134667752417a/xml/LampScpgmtb/1/100/

library(XML)
key = '796143536a756e69313134667752417a'
contentType = 'xml'
startIndex = '1'
endIndex = '200'
url = paste0('http://openapi.seoul.go.kr:8088/',key,'/',contentType,'/LampScpgmtb/',startIndex,'/',endIndex,'/')

con <- url(url, "rb") 
imsi <- read_html(con)
t <- htmlParse(imsi, encoding="UTF-8")
upNm<- xpathSApply(t,"//row/up_nm", xmlValue) 
pgmNm<- xpathSApply(t,"//row/pgm_nm", xmlValue)
targetNm<- xpathSApply(t,"//row/target_nm", xmlValue)
price<- xpathSApply(t,"//row/u_price", xmlValue)

df <- data.frame(upNm, pgmNm, targetNm, price)
View(df)
write.csv(df, "edu.csv")

# 한국은행 결제 통계시스템 Open API - JSON 응답 처리
library(jsonlite)
key = '/4WQ7X833TXC370SUTDX4/'
contentType = 'json/'
startIndex = '1'
endIndex = '/100/'

url <- paste0('http://ecos.bok.or.kr/api/KeyStatisticList',key,contentType,'kr/',startIndex,endIndex)
response <- GET(url)
json_data <- content(response, type = 'text', encoding = "UTF-8")
json_obj <- fromJSON(json_data) # fromJSON을 활용하여 데이터 객체를 만들어준다.
df <- data.frame(json_obj)
df <- df[-1] #전체 갯수가 100개다 라는 카운트 칼럼은 제거해준다.
names(df) <- c("className", "unitName", "cycle", "keystatName", "dataValue")
#칼럼명의 이름을 바꾸어 준다.
View(df)

# apply 계열의 함수를 알아보자
weight <- c(65.4, 55, 380, 72.2, 51, NA)
height <- c(170, 155, NA, 173, 161, 166)
gender <- c("M", "F","M","M","F","F")

df <- data.frame(w=weight, h=height)
df

apply(df, 1, sum, na.rm=TRUE) # 함수명 뒤에 오는 아규먼트들은 다 SUM한테 가게된다.
apply(df, 2, sum, na.rm=TRUE)
#주로 apply는 행단위나 열단위로 무엇을 하라 할때 사용한다.

lapply(df, sum, na.rm=TRUE)
#lapply는 기본으로 열단위로 일하기 때문에 '1'을 준것과 마찬가지다.
#lapply는 list로 결과값을 리턴 받는다.

sapply(df, sum, na.rm=TRUE)
#sapply는 벡터로 리턴을 해'줄'수있다. 해줄 수 있는거지 list나 다른것으로 판단해서 리턴할 수도 있다.

tapply(1:6, gender, sum, na.rm=TRUE)
#그룹핑 하여 각각 sum을 하게 되는 결과가 나온다.

tapply(df$w, gender, mean, na.rm=TRUE)

mapply(paste, 1:5, LETTERS[1:5], month.abb[1:5])
# 함수를 맨 앞에 넣는다는 특징을 가지고 있다. 왜냐면 가변형 이기 때문이다.(뒤에 몇개가 오던지 상관이 없기 때문)

v<-c("abc", "DEF", "TwT")
sapply(v, function(d) paste("-",d,"-", sep=""))
#여기서 이 function은 3번 호출되게 된다. abd 전하면서 1번, DEF 전하면서 1번, TwT 전하면서 1번.
# R의 function은 리턴값을 주지 않아도 마지막에 리턴된결과를 바로 주게된다.


l<-list("abc", "DEF", "TwT")
sapply(l, function(d) paste("-",d,"-", sep=""))
lapply(l, function(d) paste("-",d,"-", sep="")) #리스트 형식으로 리턴하고있다.

flower <- c("rose", "iris", "sunflower", "anemone", "tulip")
length(flower) # 벡터에 들어있는 전체의 데이터(원소) 갯수
nchar(flower) # number of CharacterSet의 줄인말로 각각의 Character 데이터의 문자개수 

sapply(flower, function(d) if(nchar(d) > 5) return(d)) #이번에는 리스트로 리턴하였다.
sapply(flower, function(d) if(nchar(d) > 5) d) #위랑 결과는 같지만 명확하게 return을 써주는 것이 좋다.

sapply(flower, function(d) if(nchar(d) > 5) return(d) else return(NA)) # 이번엔 또 Named 벡터로 리턴되어나왔다.
sapply(flower, function(d) paste("-",d,"-", sep=""))
sapply(flower, function(d, n) if(nchar(d) > n) return(d), 4) #여기서 4는 2번째 아규먼트로 전달되는 n에 들어가게 된다.
#function의 첫번째 데이터셋은 정해져 있지만, 2번째 아규먼트 이후는 뒤에서 전달되는 값을 사용하게된다.
sapply(flower, function(d, n=5) if(nchar(d) > n) return(d))


count <- 1
myf <- function(x, wt=T){
  print(paste(x,"(",count,")"))
  Sys.sleep(3)
  if(wt) 
    r <- paste("*", x, "*")
  else
    r <- paste("#", x, "#")
  count <<- count + 1;
  return(100)
}
result <- sapply(df$w, myf)
length(result)
result
sapply(df$w, myf, F)
sapply(df$w, myf, wt=F)
rr1 <- sapply(df$w, myf, wt=F)
str(rr1)

count <- 1
sapply(df, myf)
rr2 <- sapply(df, myf)
str(rr2)
rr2[1,1]
rr2[1,"w"]
