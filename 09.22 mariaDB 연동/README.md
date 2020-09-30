# 09.22 [ R과 MariaDB 연동 실습 ] 

(1) R이 내장하고 있는 iris 데이터셋의 구조와 상위 데이터 6개를 확인한다.

(2) iris 데이터셋의 변수명을 다음과 같이 변경한다.

변수명 : slength, swidth, plength, pwidth, species

(3) 변수명을 변경한 iris 를 MariaDB 서버에 iris 라는 테이블 명으로 저장한다.

(4) iris 테이블의 모든 데이터를 읽어서 iris_all 에 저장한다.

(5) iris 테이블에서 species 가 ‘setosa’ 인 데이터들만 추출하여 iris_setosa 에 저장한다.

(6) iris 테이블에서 species 가 ‘virginica’ 인 데이터들만 추출하여 iris_versicolor 에 저장한다.

(7) iris 테이블에서 species 가 ‘virginica’ 인 데이터들만 추출하여 iris_virginica 에 저장한다.

(8) "data/product_click.log" 데이터 파일을 읽어서 productdf 라는 데이터 프레임을 생성한다.

(9) productdf 데이터셋의 변수명을 다음과 같이 변경한다.

  변수명 : clicktime, pid

(10) 변수명을 변경한 productdb 를 MariaDB 서버에 productlog 라는 테이블 명으로 저장한다.

(11) 상품 id 가 ‘p003’ 인 데이터들만 추출하여 p003 이라는 변수에 저장한다.

(12) "data/emp.csv" 데이터 파일을 읽어서 emp 라는 데이터 프레임을 생성한다.

(13) emp 를 MariaDB 서버에 emp 라는 테이블 명으로 저장한다.

(14) emp 테이블에서 월급이 높은 순으로 데이터를 읽어와서 result1 에 저장한다.

(15) emp 테이블에서 입사한지 오래된 순으로 데이터를 읽어와서 result2 에 저장한다.

(16) emp 테이블에서 월급이 2000 이상인 데이터를 읽어와서 result3 에 저장한다.

(17) emp 테이블에서 월급이 2000 이상이고 3000 미만인 데이터를 읽어와서 result4 에 저장한다.