library(rvest)
vpoint <- NULL; vreview <- NULL

for (index in 1:5){
  url <-"https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page="
  url <- paste0(url,index)
  text <- read_html(url,  encoding="UTF-8")
  
  #평점
  nodes <- html_nodes(text,".raking_grade em")
  point <- html_text(nodes)
  vpoint <- append(vpoint,point)
  #리뷰
  nodes <- html_nodes(text,".desc_review")
  review <- html_text(nodes,trim = T)
  vreview <- append(vreview,review)
}
page <- data.frame(point=vpoint,review=vreview)
View(page)
write.csv(page,"movie2.csv")


vid <- NULL; vpoint <- NULL; vreview <- NULL; page<-NULL
url <- "https://movie.daum.net/moviedb/grade?movieId=131576&type=netizen&page="
for (index in 1:5){
  site <- paste0(url,index)
  text <- read_html(site)
  print(site)
  #아이디
  nodes <- html_nodes(text,".link_profile")
  id <- html_text(nodes)
  vid <- append(vid,id)
  #평점
  nodes <- html_nodes(text,".raking_grade em")
  point <- html_text(nodes)
  vpoint <- append(vpoint,point)
  #리뷰
  nodes <- html_nodes(text,".desc_review")
  review <- html_text(nodes,trim = T)
  vreview <- append(vreview,review)
}
page <- data.frame(id=vid,point=vpoint,review=vreview)
View(page)

