#문제 1
countEvenOdd<-function(num){
  result <- list(
    even = 0,
    odd = 0
  )
  
  if(is.vector(num) & !is.numeric(num)){
    return()
  }
  else{
  for (data in num){
    if(data %% 2 == 0){
      result$even <- result$even + 1
    }
    else{  
      result$odd <- result$odd + 1
    }
   }
    return(result)
  }
}
countEvenOdd("가")
countEvenOdd(c(1,2,3))
countEvenOdd(c(1,2,3,4,5))
countEvenOdd(c(2,4,6,8))
countEvenOdd(c(2,4,"가",8))

#문제 2
vmSum<-function(num){
  if(is.vector(num) & !is.numeric(num)){
    print("숫자 벡터를 전달하숑!")
    return(0)
  }
  else if(is.vector(num) & is.numeric(num)){
    result <- 0
    for(data in num){
       result <- result + data
    }
    return(result)
  }
  else{
    print("벡터만 전달하숑!")
    return(0)
  }
}
vmSum("가")
vmSum(array(1,2))
vmSum(1)
vmSum(c(1,2,3))
vmSum(c(1,5,9))

#문제 3
vmSum2 <-function(num){
  if(is.vector(num) & !is.numeric(num)){
    warning("숫자 벡터를 전달하숑!")
    return(0)
  }
  else if(is.vector(num) & is.numeric(num)){
    result <- 0
    for(data in num){
      result <- result + data
    }
    return(result)
  }
  else{
    stop("벡터만 전달하숑!")
    return()
  }
}
vmSum2("가")
vmSum2(array(1,2))
vmSum2(1)
vmSum2(c(1,2,3))
vmSum2(c(1,5,9))

#문제 4
mySum <-function(num){

  result <- list(
    oddSum = 0,
    evenSum = 0
  )
  if(is.null(num)){
    return()
  }
  else if(!is.vector(num)){
    stop("벡터만 처리 가능!!")
    return()
  }
  else if(is.vector(num)){
    cnt <- 0
    for (data in num){
      if(is.na(data)){
        warning("NA를 최저값으로 변경하여 처리함")
        data <- min(!is.na(num))
      }
      cnt <- cnt + 1
      if( cnt %% 2 == 0){
        result$evenSum <- result$evenSum + data
      }
      else if(cnt %% 2 == 1){
        result$oddSum <- result$oddSum + data    
      }
    }
    return(result)
  }
}
mySum()
mySum(array(1,2))
mySum(c(1))
mySum(c(1,2,3))
mySum(c(1,2,3,4))
mySum(c(1,5,NA))
mySum(c(1,5,9,10))    # 짝=15 / 홀 = 10
mySum(c(1,5,9,10,20))  # 짝=15 / 홀=30

#





