pms <- readLines("data/memo.txt",encoding="UTF-8")
pms

new1 <- gsub("[[:punct:]]", "", pms[1])
new2 <- gsub("e", "E", pms[2])
new3 <- gsub("[[:digit:]]", "", pms[3])
new4 <- gsub("[A-z]", "", pms[4])
new5 <- gsub("[[:punct:][:digit:]]", "", pms[5])
new6 <- gsub(" ", "", pms[6])
new7a <- gsub("YOU", "you", pms[7])
new7 <- gsub("OK", "ok", new7a)

newnew <- paste(new1,"\n",new2,"\n",new3,"\n",new4,"\n",new5,"\n",new6,"\n",new7)
write(newnew, "memo_new.txt")
