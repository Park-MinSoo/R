str(ggplot2::mpg)
mpg <- as.data.frame(ggplot2::mpg)
#7-1
mpg %>% mutate(sum_t = cty + hwy) -> mpg

#7-2
mpg %>% mutate(avg_t = sum_t/2) -> mpg

#7-3
mpg %>% arrange(desc(avg_t)) %>%  head(3)

#7-4
mpg %>% 
  mutate(sum_t = cty + hwy,
         avg_t = sum_t/2) %>% 
  arrange(desc(avg_t)) %>%
  head(3)

#8-1
mpg %>% 
  group_by(class) %>% 
  summarise(cty_mean = mean(cty))
  
#8-2
mpg %>% 
  group_by(class) %>% 
  summarise(cty_mean = mean(cty)) %>% 
  arrange(desc(cty_mean))

#8-3
mpg %>% 
  group_by(manufacturer) %>% 
  summarise(hwy_mean = mean(hwy,na.rm = T)) %>% 
  arrange(desc(hwy_mean)) %>% 
  head(3)

#8-4
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == 'compact') %>% 
  count(class) %>% 
  arrange(desc(n))

#9
fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)
fuel
#9-1
mpg <- full_join(mpg, fuel, by = "fl")

#9-2
mpg %>% select(model, fl, price_fl) %>% 
  head(5)

#10-1
str(ggplot2::midwest)
midwest <- as.data.frame(ggplot2::midwest)
View(midwest)

midwest %>% mutate(percent_m = (poptotal - popadults)*100 / poptotal) -> midwest

#10-2
midwest %>%
  group_by(county) %>% 
  arrange(desc(percent_m)) %>% 
  select(percent_m) %>% 
  head(5)

#10-3
midwest %>% 
  mutate(grade = ifelse(percent_m >= 40, "large",
                        ifelse(percent_m >= 30, "middle", "small")
                        ))  %>% 
  group_by(grade) %>%
  select(grade, county) %>% 
  count(grade)
  
#10-4
midwest %>% 
  mutate(percent_a = popasian*100 / poptotal) %>% 
  arrange(percent_a) %>% 
  select(state, county, percent_a) %>% 
  head(10)

#11
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA

#11-1
table(is.na(mpg$drv))
table(is.na(mpg$hwy))

#11-2
mpg %>% 
  filter(!is.na(hwy)) %>%
  group_by(drv) %>% 
  summarize(hwy_mean = mean(hwy))

#12
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10, 14, 58, 93), "drv"] <- "k"
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 4, 39, 42)

#12-1
table(mpg$drv)
mpg$drv <- ifelse(mpg$drv %in% c('k'), NA, mpg$drv)
table(mpg$drv)

#12-2
boxplot(mpg$cty)$stats
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
boxplot(mpg$cty)

#12-3
mpg %>%
  filter(!is.na(drv)) %>% 
  group_by(drv) %>% 
  summarise(cty_mean = mean(cty,na.rm = T))
