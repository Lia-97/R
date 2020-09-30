# 09.08_ Lab03

##### [문제1] iris 라는 데이터셋이 몇 개의 관측치를 가지고 있으며 어떠한 변수들을 가지고 있는지 채크하려 한다. 이 때 사용되는 R코드를 작성하시오.

 

##### [문제2] 다음과 같이 값이 구성되는 데이터프레임을 정의하여 df1 에 저장한다.

![img](file:///C:/Users/zhezh/AppData/Local/Packages/oice_16_974fa576_32c1d314_ea8/AC/Temp/msohtmlclip1/01/clip_image002.jpg)

##### [문제3] 다음과 같이 값이 구성되는 데이터프레임을 정의하여 df2 에 저장한다.

​            ![img](file:///C:/Users/zhezh/AppData/Local/Packages/oice_16_974fa576_32c1d314_ea8/AC/Temp/msohtmlclip1/01/clip_image004.jpg)

##### [문제4] c() 함수로 먼저 벡터를 생성한 다음 data.frame()사용해서 다음과 같이 구성되는 데이터 프레임 df3를 만들어 출력해 본다.(제품명이 팩터형이 되지 않게 한다.)

​      제품명  가격   판매량

​      사과   1800   24

​      딸기   1500   38

​      수박   3000   13

 

##### [문제5] 앞에서 만든 데이터 프레임을 이용해서 과일 가격 평균, 판매량 평균을 구하여 출력한다.

 

##### [문제6] 다음 세 벡터를 이용하여 데이터프레임 df4를 생성하고 구조를 확인한다.

​      name <- c(“Potter”, “Elsa”, “Gates”, “Wendy”, “Ben”)

​      gender <- factor(c(“M”, “F”, “M”, “F”, “M”))

​      math <- c(85, 76, 99, 88, 40)

 

위에서 만든 데이터프레임에 대해 다음 작업을 수행하시오. 

(a) stat 변수를 추가하시오. stat <- c(76, 73, 95, 82, 35)

(b) math 변수와 stat 변수의 합을 구하여 score 변수에 저장하시오. 

(c) 논리 연산 인덱싱을 이용하여 score가 150 이상이면 A, 100 이상 150 미만이면 B, 70 이상 100 미만이면 C, 70 미만이면 D 등급을 부여하고 grade 변수에 저장하시오.  

 

##### [문제7] emp변수에 할당된 데이터프레임 객체의 구조를 점검한다.

##### [문제8] emp 에서 3행, 4행 , 5행만 출력한다.

##### [문제9] emp 에서 사번열을 제외하고 출력한다.

##### [문제10] emp 에서 ename컬럼만 출력한다.

##### [문제11] emp 에서 ename 과 sal컬럼만 출력한다.

##### [문제12] 업무가 SALESMAN 인 사원의 이름, 월급, 직업을 출력한다.

##### [문제13] 월급이 1000 이상이고 3000이하인 사원들의 이름, 월급, 부서번호를 출력한다.

##### [문제14] emp 에서 직업이 ANALYST 가 아닌 사원들의 이름, 직업, 월급을 출력한다.

##### [문제15] emp 에서 업무가 SALESMAN 이거나 ANALYST 인 사원들의 이름, 직업을 출력한다.

##### [문제16] emp 에서 커미션이 정해지지 않은 직원의 이름과 월급 정보를 출력한다.

​     (NA 값을 채크하는 것은 제공된 교육자료(워드문서)의 1 페이지를 참고한다.)

##### [문제17] 월급이 적은 순으로 모든 직원 정보를 출력한다.

##### [문제18] emp의 행과 열의 갯수를 점검한다.