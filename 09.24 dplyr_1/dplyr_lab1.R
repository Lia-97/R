library(dplyr)
library(rJava)
library(RJDBC)
library(DBI)
drv <- JDBC(driverClass = "org.mariadb.jdbc.Driver", "mariadb-java-client-2.6.2.jar")
conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work','scott','tiger')
emp <- dbReadTable(conn,'emp')
View(emp)
#0
emp %>% mutate(comm = ifelse(comm < 0, NA, comm)) -> emp
#1
emp %>% filter(job == "MANAGER")
#2
emp %>% select(empno,ename,sal)
#3
emp %>% select(-empno)
#4
emp %>% select(ename,sal)
#5
clerk <- emp %>% filter(job == "CLERK")
analyst <- emp %>% filter(job == "ANALYST")
salesman <- emp %>% filter(job == "SALESMAN")
president <- emp %>% filter(job == "PRESIDENT")
manager <- emp %>% filter(job == "MANAGER")
count(clerk)
count(analyst)
count(salesman)
count(president)
count(manager)

emp %>% 
  group_by(job) %>% 
  tally()

emp %>% 
  group_by(job) %>% 
  summarise(n=n())
#6
emp %>% filter(sal>=1000 & sal<=3000) %>% select(ename,sal,deptno)
#7
emp %>% filter(job != "ANALYST") %>% select(ename,job,sal)
#8
emp %>% filter(job == "SALESMAN" | job == "ANALYST") %>% select(ename,job)
#9
emp %>%
  group_by(deptno) %>%               
  summarise(sum_sal = sum(sal))
#10
emp %>% arrange(sal)
#11
emp %>% arrange(desc(sal)) %>% head(1)
#12
emp %>% 
  rename(commrate = comm,
         salary = sal) -> empnew
empnew
emp
#13
emp %>% 
  count(deptno) %>% 
  arrange(n) %>% 
  tail(1) %>% 
  select(deptno) %>% 
  names
#14
emp %>%
  mutate(enamelength == nchar(ename)) %>% 
  arrange(enamelength) %>% select(ename)
#15
emp %>% filter(comm != "NA") %>% nrow()
emp %>% filter(!is.na(comm)) %>% summarise(n=n())
emp %>% filter(!is.na(comm)) %>% tally
emp %>% filter(!is.na(comm)) %>% count


