#문제1
str(iris)

#문제2
x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)
df1 <- data.frame(x,y);df1
df1 <- data.frame(x=(1:5),y=seq(2,10,2));df1

#문제3
col1 <- c(1,2,3,4,5) # 1:5
col2 <- c('a','b','c','d','e') # letters[1:5]
col3 <- c(6,7,8,9,10)
df2 <- data.frame(col1,col2,col3);df2

#문제4
df3 <- data.frame(
  제품명=c('사과','딸기','수박'),
  가격=c(1800,1500,3000),
  판매량=c(24,38,13))
df3

#문제5
mean(df3$가격)
mean(df3$판매량)

#문제6
name <- c('Potter', 'Elsa', 'Gates', 'Wendy', 'Ben')
gender <- factor(c('M', 'F', 'M', 'F', 'M'))
math <- c(85, 76, 99, 88, 40)
df4 <- data.frame(name,gender,math);df4
df4$stat <- c(76,73,95,82,35);df4
df4$score <- df4$math + df4$stat
df4$grade <- ifelse(df4$score >= 150,"A",
                    ifelse(df4$score >= 100,"B",
                           ifelse(df4$score >= 70,"C","D")))

#문제7
emp <- read.csv("data/emp.csv")
head(emp)

#문제8
emp[c(3,4,5),]

#문제9
emp[,-4]

#문제10
emp["ename"]
emp$ename
emp[2]

#문제11
emp[,c("ename","sal")]
subset(emp,select=c("ename","sal"))

#문제12
head(emp)
emp[emp$job=='SALESMAN',c(2,3,6)]
subset(emp,subset=(job=="SALESMAN"),select=c("ename","sal","job"))

#문제13
emp[emp$sal >= 1000 & emp$sal <= 3000,c("ename","sal","deptno")]

#문제14
emp[emp$job != "ANALYST",c("ename","job","sal")]

#문제15
emp[emp$job=="ANALYST"|emp$job=="SALESMAN",c('ename','job')]

#문제16
emp[is.na(emp$comm),c('ename','sal')]

#문제17
emp[order(emp$sal),] #데이터프레임에서는 sort 대신 order

#문제18
dim(emp)



