#문제1
L1 <- list(name="scott", sal=3000)
result1 <- L1[[2]]*2

#문제2
L2 <- list("scott",c(100,200,300))

#문제3
L3 <- list(c(3,5,7),c("A","B","C"))
L3[[2]][1] <- "Alpha"
L3

#문제4
L4 <- list(alpha=0:4,beta=sqrt(1:5),gamma=log(1:5))
L4[[1]]+10

#문제5
emp <- read.csv(file.choose())
L5 <- list(data1=LETTERS[1:26],data2=emp[(1:3),],data3=L4)
#하나의 리스트 안에 다양한 타입의 데이터셋이 들어갈 수 있다.
L5[[1]][[1]]
L5[[2]]$ename
L5$data3$gamma

#문제6
L6 <- list(math=list(95,90),writing=list(90,85),reading=list(85,80))
mean(unlist(L6))