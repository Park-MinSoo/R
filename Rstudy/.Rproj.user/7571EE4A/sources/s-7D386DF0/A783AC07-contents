install.packages("Rserve")
library(dplyr)
library(Rserve)
pdf <- read.table("data/product_click.log")
names(pdf) <- c("logdate", "product")
pdf <- pdf %>% select(product) %>% group_by(product) %>% summarise(clickcount = n()) %>% arrange(desc(clickcount)) %>% head(1)
pdf <- as.data.frame(pdf)
pdf


install.packages("rJava")
library(rJava)
library(wordcloud)
library(KoNLP)
