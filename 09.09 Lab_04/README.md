# 09.09_ Lab04

##### [문제1] 다음과 같이 값이 구성되는 리스트를 정의하여 L1 에 저장한다.

![img](file:///C:/Users/zhezh/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg)

 3000 을 추출하여 2를 곱한 후에 result1 변수에 저장한다.

 

##### [문제2] 다음과 같이 값이 구성되는 리스트를 정의하여 L2 에 저장한다.

![img](file:///C:/Users/zhezh/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg)

 

##### [문제3] 다음 리스트에서 A를 "Alpha"로 대체한다.(L3)

​      list(c(3,5,7), c(“A”, “B”, “C”))

 

##### [문제4] 다음 리스트에서 첫 번째 원소(alpha)의 각 값에 10을 더하여 출력한다.(L4)

​      list(alpha=0:4, beta=sqrt(1:5), gamma=log(1:5))

 

##### [문제5] 다음과 같은 원소들로 구성되는 리스트를 생성한다.(L5)

​      첫 번째 원소는 data1이라는 이름으로 알파벳대문자로 구성되는 벡터

​      두 번째 원소는 data2이라는 이름으로 emp 라는 데이터프레임에서 3개행으로 구성된 데이터프레임

​      세 번째 원소는 data3이라는 이름으로 문제4에서 만든 L4 라는 리스트

​    ![img](file:///C:/Users/zhezh/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg)

 

   L5를 가지고 다음과 같이 출력하는 R 코드를 만들어본다.

​    ![img](file:///C:/Users/zhezh/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg)

##### [문제6] 다음 리스트는 math, writing, reading의 중간고사 및 기말고사 점수이다. (L6)

전체 평균을 계산하여 출력한다.

   (힌트 **: unlist()** 함수를 활용한다. unlist() : 리스트를 벡터형식의 데이터셋으로 풀어주는 함수)

​      list(math=list(95, 90), writing=list(90, 85), reading=list(85, 80))