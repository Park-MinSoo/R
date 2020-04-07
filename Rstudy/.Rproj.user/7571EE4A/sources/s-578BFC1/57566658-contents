# 스타벅스 서울 매장 읽어오기

library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open()
remDr$navigate("https://www.istarbucks.co.kr/store/store_map.do?disp=locale")
Sys.sleep(1)
pageLink <- remDr$findElements(using='css',"#container > div > form > fieldset > div > section > article.find_store_cont > article > article:nth-child(4) > div.loca_step1 > div.loca_step1_cont > ul > li:nth-child(1) > a")
remDr$executeScript("arguments[0].click();",pageLink) 
Sys.sleep(1)
pageLink <- remDr$findElements(using='css',"#mCSB_2_container > ul > li:nth-child(1) > a")
remDr$executeScript("arguments[0].click();",pageLink) 

Sys.sleep(3)
pageLink <- NULL
store <- NULL
index <- 1

repeat {
#매장명 추출
  doms <- remDr$findElements(using = "css", "#mCSB_3_container > ul > li:nth-child(1) > strong")
  store_v <- sapply(doms, function (x) {x$getElementText()})
  print(store_v)
  store <- append(store, unlist(store_v))
  

#위도 추출(lat)

#경도 추출(long)

#주소 & 전화번호 추출
  doms <- remDr$findElements(using = "css", "#mCSB_3_container > ul > li:nth-child(1) > p")
  Sys.sleep(1)
  store_v <- sapply(doms, function (x) {x$getElementText()})
  store_v <- strsplit(unlist(store_v), split="\n")
  print(store_v)
  store <- append(store, unlist(store_v))
  print(store)
  cat(length(store), "\n")


# 전체 매장 갯수 추출 코드
    sizeCss <- "#container > div > form > fieldset > div > section > article.find_store_cont > c"
    size <- remDr$findElements(using = 'css selector', sizeCss)
    limit <- sapply(size, function(x){x$getElementText()})
    
# 3개의 매장 정보를 읽고 세번째 매장 DOM 객체 위에서 스크롤 이벤트 발생
# 마지막 매장에 도달한 경우에는 더 이상 스크롤이벤트 발생 불필요    

    if(index %% 3 == 0 && index != limit)
      remDr$executeScript(
        "var dom=document.querySelectorAll('#mCSB_3_container > ul > li')[arguments[0]];
    dom.scrollIntoView();",list(index))
    
}


cat(length(store), "개의 매장 추출\n")
write(store, "starbucks.csv")














