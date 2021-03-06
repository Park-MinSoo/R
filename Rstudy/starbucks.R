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
totaldata<- NULL
totalStore <- NULL
index <- 1

# 전체 매장 갯수 추출 코드

sizeCss <- "#container > div > form > fieldset > div > section > article.find_store_cont > article > article:nth-child(4) > div.loca_step3 > div.result_num_wrap > span"
size <- remDr$findElements(using = 'css', sizeCss)
limit <- sapply(size, function(x){x$getElementText()})
#전체 511개를 추출해왔음.

repeat {
  for(i in 1:as.numeric(limit)){
#매장명 추출
  cssAdd <- paste("#mCSB_3_container > ul > li:nth-child(",i,") > strong", sep="")                 
  doms <- remDr$findElements(using = "css", cssAdd)
  store_v <- sapply(doms, function (x) {x$getElementText()})
  store_title <- store_v[[1]][1]
  
#위도 추출(lat) & 경도 추출(long)  
  cssAdd2 <- paste("#mCSB_3_container > ul > li:nth-child(",i,")", sep="")                 
  doms <- remDr$findElement(using = "css", cssAdd2)
  
  lat <- doms$getElementAttribute("data-lat")
  print(lat)
  
  
  
  lng <- doms$getElementAttribute("data-long")
  print(lng)
  
  
# 주소 & 전화번호 추출
  cssAdd3 <- paste("#mCSB_3_container > ul > li:nth-child(",i,") > p", sep="")                 
  doms <- remDr$findElements(using = "css", cssAdd3)
  Sys.sleep(1)
  store_v <- sapply(doms, function (x) {x$getElementText()})
  store_v <- strsplit(unlist(store_v), split="\n")
  store_add <- store_v[[1]][1]
  store_num <- store_v[[1]][2]
# 하나의 데이타 프레임으로 통합
  totaldata <- data.frame(
    "매장명" = store_title,
    "위도" = unlist(lat),
    "경도" = unlist(lng),
    "주소" = store_add,
    "전화번호" = store_num
  )
  totalStore <- rbind(totalStore,totaldata)
# 3개의 매장 정보를 읽고 세번째 매장 DOM 객체 위에서 스크롤 이벤트 발생
# 마지막 매장에 도달한 경우에는 더 이상 스크롤이벤트 발생 불필요    

    if(index %% 3 == 0 && index != limit) # 3으로 나누어 나머지 0 이면서 인덱스는 전체 크기가 아닐때
      remDr$executeScript(
        "var dom=document.querySelectorAll('#mCSB_3_container > ul > li')[arguments[0]];
    dom.scrollIntoView();",list(index))
    index <- index + 1
  }
  if(i == limit)
    break
}

write.csv(totalStore, "starbucks.csv")
