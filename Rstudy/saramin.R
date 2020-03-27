text<- NULL
url<- "http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&searchword=Java"
text <- read_html(url)
text

# tech_name
nodes <- html_nodes(text,"ul>li>label.lbl_sfilter>span.txt")
tech_name <- html_text(nodes)
tech_name <- gsub("#", "", tech_name)
tech_name

# info_count
nodes <- html_nodes(text, "ul>li>label>span.count")
info_count <- html_text(nodes)
info_count <- gsub("[[:punct:]]", "", info_count)
info_count

page <- cbind(tech_name[1:30], info_count)
write.csv(page, "saramin.csv")
