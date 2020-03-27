# 정규표현식 사용
word <- "JAVA javascript Aa 가나다 AAaAaA123 %^&*"
gsub(" ", "", word) #공백을 없애라.
gsub(" ", "@", word) #공백을 골뱅이로 바꾸어라.
sub(" ", "@", word)  #sub는 최초 발견 하나만 바꾸지만 gsub는 전부다 바꾼다.
gsub("A", "", word) 
gsub("a", "", word) 
gsub("Aa", "", word) 
gsub("(Aa)", "", word) #가로만 붙인것은 안붙인거랑 차이가 다를게 없다.
gsub("(Aa){2}", "", word) #이렇게 그룹핑 후 횟수{}를 주게되면 의미가 있다.
gsub("Aa{2}", "", word) #이 경우에는 Aaa라는 것으로 처리되어진다.
gsub("[Aa]", "", word) #대괄호는 or이다. 하나하나 없애준다.
gsub("[가-힣]", "", word) #'가'부터 '힣'까지 없애라라 
gsub("[^가-힣]", "", word) # 정규표현식 앞에 ^표시는 not의 의미다. 즉, 여기서는 한글이 아닌 애들을 지우시요 가 된다.
gsub("[&^%*]", "", word) 
gsub("[[:punct:]]", "", word) # punct = 특수문자들
gsub("[[:alnum:]]", "", word) #alphabet numeric = 문자와(한글 포함) 숫자
gsub("[1234567890]", "", word) 
gsub("[0-9]", "", word) 
gsub("\\d", "", word) #숫자만 없애시오
gsub("\\D", "", word) #숫자가 아닌애들을 없애시오오
gsub("[[:digit:]]", "", word) 
gsub("[^[:alnum:]]", "", word) 
gsub("[[:space:]]", "", word) #스페이스 없애라
gsub("[[:punct:][:digit:]]", "", word) # 이런식으로 정규표현식을 묶어줄 수도 있다.


install.packages("RSelenium")
library(RSelenium)
remDr<-remoteDriver(remoteServerAddr= "localhost" ,
                    port = 4445, browserName= "chrome")
remDr$open()
remDr$navigate("http://www.google.com/")

webElem<-remDr$findElement(using = "css", "[name = 'q']")
# css에서의 name = q 값인거를 찾아줘줘
webElem$sendKeysToElement(list("JAVA", key = "enter"))
# JAVA를 입력하고 엔터까지 눌러줘줘

remDr$open()
remDr$navigate("http://www.naver.com/")

webElem<-remDr$findElement(using = "css", "[name = 'query']")
# css에서의 name = q 값인거를 찾아줘줘
webElem$sendKeysToElement(list("JAVA", key = "enter"))

