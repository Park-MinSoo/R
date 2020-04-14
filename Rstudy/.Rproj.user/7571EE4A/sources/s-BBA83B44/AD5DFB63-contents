str(ggplot2::mpg)
mpg <- as.data.frame(ggplot2::mpg)

#1-1 mpg의 구조를 확인한다.
str(mpg)

#1-2 mpg 의 행의 개수와 열의 개수를 출력한다.
mpg %>% tally() #행
mpg %>% summarise(n = n()) #행

nrow(mpg) #행
ncol(mpg) #열

#1-3 mpg의 데이터를 앞에서 10개 출력한다.
mpg %>% head(10)

#1-4 mpg의 데이터를 뒤에서 10개 출력한다.
mpg %>% tail(10)

#1-5. mpg의 데이터를 GUI 환경으로 출력한다.
View(mpg)

#1-6 mpg를 열 단위로 요약한다.
mpg %>%  summary()

#1-7 mpg 데이터셋에서 제조사별 차량의 수를 출력한다.
mpg %>% group_by(manufacturer) %>% count()

#1-8 mpg 데이터셋에서 제조사별 그리고 모델별 차량의 수를 출력한다.
mpg %>% group_by(manufacturer, model) %>% count()

# 2-2 복사본 데이터를 이용해서 cty는 city로, hwy는 highway로 변수명을 수정하세요.
mpg %>% rename(city = cty, highway = hwy) -> mpg

# 2-3 데이터 일부를 출력해서 변수명이 바뀌었는지 확인해 보세요.
mpg %>% head()


# 3-1. ggplot2의 midwest 데이터를 데이터 프레임 형태로 불러와서 데이터의 특성을 파악하세요.
str(ggplot2::midwest)
midwest <- as.data.frame(ggplot2::midwest)
View(midwest)

# 3-2. poptotal(전체 인구)을 total로, popasian(아시아 인구)을 asian으로 변수명을 수정하세요.
midwest %>% rename(total = poptotal, asian = popasian) -> midwest

# 3-3. total, asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율' 파생변수를 만들어 보세요
midwest %>%  
  mutate(percent = asian * 100 /total) -> midwest

# 3-4. 아시아 인구 백분율 전체 평균을 구하고, 평균을 초과하면 "large", 그 외에는 "small"을 부여하는 파생변수를 만들어 보세요.
midwest %>%  
  mutate(result = ifelse(percent >= mean(percent), "large", "small"))
  












