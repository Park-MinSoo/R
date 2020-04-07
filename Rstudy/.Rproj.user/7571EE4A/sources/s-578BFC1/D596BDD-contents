#문제 1
grade <- sample(1:6,1)
if(grade<4){
  cat(grade,"학년은 저학년입니다.","\n")
}else{
  cat(grade,"학년은 고학년입니다.","\n")
}

#문제 2
choice <- sample(1:5,1)
cat(choice,":",switch(EXPR = choice,300+50,300-50,300*50,300/50,300%%50),"\n")

#문제 3
count <- sample(3:10,1)
deco <- sample(1:3,1)
cat(switch(EXPR = deco,
                    for(n in 1:count)
                      cat("*"),
                    for(n in 1:count)
                      cat("$"),
                    for(n in 1:count)
                      cat("#"),),"\n")

#문제 4
score <- sample(1:100,1)
if (score >=90){
  level <- "A 등급"
}else if (score >=80){
  level <- "B 등급"
}else if (score >=70){
  level <- "C 등급"
}else if (score >=60){
  level <- "D 등급"
}else {
  level <- "F 등급"
}

cat(score, "점은", level, "입니다.")

#문제 5
a <- LETTERS
b <- letters
alpha <- paste(a,b,sep="")
alpha

