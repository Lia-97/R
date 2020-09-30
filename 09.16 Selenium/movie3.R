library(rvest)
vpoint <- NULL; vreview <- NULL; page <- NULL
index=0
while (TRUE){
  index = index+1
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
  if(length(nodes)==0)  break
}
page <- data.frame(point=vpoint,review=vreview)
View(page)
write.csv(page,"movie3.csv")
