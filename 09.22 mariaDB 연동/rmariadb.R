#1
head(iris)
#2
names(iris) <- c('slength','swidth','plength','pwidth','species')
#3
library(rJava)
library(RJDBC)
library(DBI)
drv <- JDBC(driverClass = "org.mariadb.jdbc.Driver", "mariadb-java-client-2.6.2.jar")
conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work','scott','tiger')
dbWriteTable(conn, "iris",iris) #테이블 만들기
#4
iris_all <- dbReadTable(conn, "iris") #테이블 전체 읽기
iris_all

#5
iris_setosa <- dbGetQuery(conn, "select * from iris where species ='setosa'")
iris_setosa

#6
iris_versicolor <- dbGetQuery(conn, "select * from iris where species ='versicolor'")
iris_setosa

#7
iris_virginica <- dbGetQuery(conn, "select * from iris where species = 'virginica'")
iris_virginica

#8
productdf <- read.table("C:/Rexam/data/product_click.log")
View(productdf)

#9
names(productdf) <- c('clicktime', 'pid')
View(productdf)

#10
dbWriteTable(conn,"productlog",productdf)
dbReadTable(conn, "productlog")

#11
p003 <- dbGetQuery(conn, "Select * from productlog where pid ='p003'")
p003

#12
emp <- read.csv("data/emp.csv")

#13
emp <- dbWriteTable(conn, "emp", emp)
View(emp)

#14
result1 <- dbGetQuery(conn, "Select * from emp order by sal desc")
result1

#15
result2 <- dbGetQuery(conn, "Select * from emp order by hiredate")
result2

#16
result3 <- dbGetQuery(conn, "Select * from emp where sal >= 2000")
result3

#17
result4 <- dbGetQuery(conn, "Select * from emp where sal >= 2000 and sal < 3000")
result4
