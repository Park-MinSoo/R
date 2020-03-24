#LIST
v<-c(1,2,3)
l<-list(1,2,3) 
v
l
#l*3  같은 경우 에러가발생하게된다. (list는 포장되어 들어간것이기 때문)
#그 경우 unlist로 잠시 풀어서 사용한다.
v[1]
l[1] #l[1]*3 같이 포장된 채로는 에러가 난다.
l[[1]] #따라서 l[[1]]*3 은 정상동작 하게된다.

lds <- list(1,2,3) 
lds
lds+100
unlist(lds)
unlist(lds) + 100
lds[1]
lds[1]+10
lds[[1]]+10

names(lds) <- LETTERS[1:3]
lds
lds[[2]]
lds[["B"]] #숫자 대신 문자 index를 줄 수도 있다.
lds$B


a<-list(
  a = 1:3,
  b = "a string",
  c = pi,
  d = list(-1,-5)
)

a[1]
a[[1]] # a[["a"]]
a$a
a[[1]][1]
a$a[1]
a[1]+1
a[[1]]+1
a[[1]][2] <- 100
new_a <- unlist(a[1])
a[1]; new_a
names(a) <- NULL
names(new_a) <- NULL



ls()
length(ls())
save(list=ls(),file="all.rda") # varience will save in "all.rda" of rexam
#rda = 객체 상태 그대로를 이미지로 저장하는 것이다.
rm(list=ls())
ls()
load("all.rda")
ls()

#read file data
nums <- scan("data/sample_num.txt")
word_ansi <- scan("data/sample_ansi.txt",what="")
#what이라는 매개변수에 null 문자열을 주어 캐릭터 벡터로 읽어올 수 있다.
words_utf8 <- scan("data/sample_utf8.txt", what="",encoding="UTF-8")
words_utf8_new <- scan("data/sample_utf8.txt", what="")
#scan은 숫자를 읽어 들이는것에 특화가 되어있다.

#readLines는 행단위(가로)로 데이터를 읽어오게 된다.
lines_ansi <- readLines("data/sample_ansi.txt")
lines_utf8 <- readLines("data/sample_utf8.txt",encoding="UTF-8")
#UTF-8의 경우 그냥 읽으면 제대로 안읽혀오고 한글이 깨지게 된다.
#R은 UTF-8을 쓸 때 반드시 대문자로 줘야한다.

df2 <- read.table("data/product_click.log")
#read.table은 seperate를 원하는것으로 마음대로 구분할수 있다. default는 공백
#read.table은 제목행이 없는 처리하는것이 기본이다.(자동으로 v1, v2가 붙음)
str(df2)
head(df2)
summary(df2$V2)


for(data in month.name) 
  print(data)

sum <- 0
for(i in 5:15){
  if(i%%10==0){
    break
  }
  sum <- sum + i
  print(paste(i,":",sum))
}


sum <-0
for(i in 5:15){
  if(i%%10==0){
    next;  #continue
  }
  sum <- sum + i
  print(paste(i,":",sum))
}

sumNumber <- 0
while(sumNumber <= 20) { 
  i <- sample(1:5, 1) 
  sumNumber <-sumNumber+i; 
  cat(sumNumber,"\n")
} 

repeat {
  cat("ㅋㅋㅋ\n")
}


sumNumber <- 0
repeat { 
  i <- sample(1:5, 1) 
  sumNumber <-sumNumber+i; 
  cat(sumNumber,"\n")
  if(sumNumber > 20)
    break;
}


# 함수 정의와 활용

func1 <- function() {
  xx <- 10   # 지역변수
  yy <- 20
  return(xx*yy)
}
func1()

result <- func1()
result
xx  # 오류발생


func2 <- function(x,y) {
  xx <- x
  yy <- y
  return(sum(xx, yy))
}

func2()
func2(5,6) # 식 : 연산식, 호출식, 변수, 리터럴

func3 <- function(x,y) {
  #x3 <- x+1
  #y3 <- y+1
  x4 <- func2(x+1, y+1)  # 값(식) : 변수, 리터럴, 연산식, 호출식
  return(x4)
}

func3(9, 19)  # 30

func4 <- function(x=100, y=200, z) {
  return(x+y+z)
}
func4()
func4(10,20,30)
func4(x=1,y=2,z=3)
func4(y=11,z=22,x=33)
func4(z=1000)  


