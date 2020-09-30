library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()
url<-'https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2'
remDr$navigate(url)
Sys.sleep(3)
pageLink <- NULL
reple_v<-NULL

while(TRUE){
  doms <- remDr$findElements(using = "css selector", "div.review_desc > p")
  reple <- sapply(doms, function (x) {x$getElementText()})
  reple_v<-append(reple_v,unlist(reple))
  print(reple_v)
  pageLink_v <- remDr$findElements(using='css',"div.review_ta.ng-scope > div.paginate > a.direction.next.disabled")
  if (length(pageLink_v) != 0){
    print("수집 끝")
    break
  }
  pageLink <- remDr$findElements(using='css',"div.review_ta.ng-scope > div.paginate > a.direction.next")
  next_button <- sapply(pageLink, function (x) {x$clickElement()})
  Sys.sleep(3)
  
  
}

write(reple_v,"naverhotel.txt")
