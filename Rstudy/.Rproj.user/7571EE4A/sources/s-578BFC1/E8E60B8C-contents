url<-'http://comic.naver.com/comment/comment.nhn?titleId=570503&no=135'
remDr$open()
remDr$navigate(url)

#베스트 댓글 내용 읽어오기
bestReviewNodes<-remDr$findElements(using ="css selector","ul.u_cbox_list span.u_cbox_contents")
bestReview <- sapply(bestReviewNodes,function(x){x$getElementText()})
bestReview

#전체 댓글 내용 읽어오기
totalReview <- remDr$findElement(using='css','#cbox_module > div > div.u_cbox_sort > div.u_cbox_sort_option > div > ul > li:nth-child(2) > a')
totalReview$clickElement()
totalReviewFin <- list()

for (k in 1:5){
for (i in 4:13) {
  totalReviewNodes <- remDr$findElements(using ="css selector","ul.u_cbox_list span.u_cbox_contents")
  totalReview5 <- sapply(totalReviewNodes,function(x){x$getElementText()})
  totalReviewFin <- append(totalReviewFin, unlist(totalReview5))
  
  nextCss <- paste0("#cbox_module>div>div.u_cbox_paginate>div> a:nth-child(",i,") > span")
  nextPage<-remDr$findElement(using='css',nextCss)
  nextPage$clickElement()
}
}
page <- append(unlist(bestReview), unlist(totalReviewFin))
write(page, "webtoon1.txt")
