#문제 1
exam1 <- function(){
  fin1 <- paste(LETTERS,letters,sep="")
  return(fin1)
}
exam1()


#문제 2
exam2 <- function(num){
  fin2 <- sum(1:num)
  return(fin2)
}
exam2(10)

#문제 3
exam3 <- function(num1, num2){
  if(num1 > num2){
    fin3 <- num1 - num2
  }
  else if(num1 < num2){
    fin3 <- num2 - num1
  }
  else{
    fin3 <- 0
  }
  return(fin3)
}
exam3(30,30)
exam3(10,30)
exam3(80,30)

#문제 4
exam4 <- function(num1,p,num2){
  if(p == "+"){
    fin4 <- num1 + num2
  }
  else if(p == "-"){
    fin4 <- num1 - num2
  }
  else if(p == "*"){
    fin4 <- num1 * num2
  }
  else if(p == "%/%"){
    if(num1 == 0){
      fin4 <- "오류1"
    }else if(num2 == 0){
      fin4 <- "오류2"
    }else{
       fin4 <- num1 %/% num2
    }
  }
  else if(p == "%%"){
    if(num1 == 0){
      fin4 <- "오류1"
    }else if(num2 == 0){
      fin4 <- "오류2"
    }else{
      fin4 <- num1 %% num2
    }  
  }
  else if(p != "+"|"-"|"*"|"%/%"|"%%"){
    fin4 <- "규격의 연산자만 전달하세요"
  }
  else{
    
  }
  return(fin4)
}
exam4(30,"+",5)
exam4(30,"-",5)
exam4(30,"*",5)
exam4(30,"%/%",5)
exam4(30,"%%",5)
exam4(0,"%%",5)
exam4(0,"%/%",5)
exam4(30,"%%",0)
exam4(30,"%/%",0)
exam4(30,"ㅋㅋㅋ",0)

#문제 5
exam5 <- function(num1,p="#"){
  if(num1 < 0){
  cat()
    }
  else {
    i <- 1
    for(i in 1:num1)
     cat(p)          
    i <- i +1
    }
  return()
}
exam5(7,"+")
exam5(5)

#문제 6
exam6 <- function(point){
  for(data in point){

    if(is.na(data)){
      print("NA는 처리불가")
    }
    else{
      if (data >=85 & data <= 100){
       level <- "상"
     }else if (data >=70){
       level <- "중"
     }else if (data <70 & data >= 0) {
       level <- "하"
     }
   result <- paste(data,"점은", level,"등급입니다.")
   print(result)
   }
  }
  return()
}
exam6(c(80, 50, 70, 66, NA, 35))

