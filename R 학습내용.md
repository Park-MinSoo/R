# [ R 학습내용 ]

R 설치 URL : www.r-project.org

R 스튜디오 설치 URL : www.rstudio.com



## R

- 완전한 이터프리터 언어이다.
  - 플랫폼에 영향을 받지 않지만 속도가 좀 느리다.
- Java 처럼 API를 Pacakge 라고 부른다.
- R_GUI 라는 기본 툴을 내장하고 있다.
  - 장점 : 가볍다.
- Java는 기본구조를 완벽히 만든 다음(반드시 하나의 클래스, 메서드 등) 컴파일을 해야 실행이 되지만 R은 그냥 필요한 코드만 넣어도 수행 가능하다.
  - 이런것을 스크립트 언어(자바스크립트, 파이썬 ,R 등)라고 한다.
- R은 Index가 0부터가 아닌 1부터 시작한다.
- +기호가 있다면 이전문장에 이어서 prompt가 진행된다는것이다.
  - 앞의 명령이 완전하게 끝내지 않고 Enter를 쳤을 경우 자동으로 +로 다음행이 출력되어 진다.

- c대입연산자 : <-

- c는 함수를 생성해준다.

- c:\hardy\Rstudy

- 얘는 주석이 #이다.'
- R은 스칼라가 없다. ex) 10 => 원소 1개 짜리 벡터의 값으로 안다.
  - *스칼라 : 하나의 값

if)

```R
c(10,"A") ----> c("10", "A")
c(10,T)   ----> c(10,1)

```



- 정규표현식

```R
? ---> 0, 1
+ ---> 1 이상
* ---> 0 이상
```

- R셀레니움 bin 경로

  C:\hardy\Rstudy\selenium-server-standalone-master\bin

- R셀레니움 포트넘버

  java -jar selenium-server-standalone.jar -port 4445



# [ 멘토링 내용 정리 ]

- 허주용 멘토님

  - 자신만의 키워드를 정해서 던져줄 것.

  - similarWeb

  - 아이디어 매트릭스

    

- 박영진 멘토님

  - 데이터는 전처리 과정이 굉장히 중요하다.

    - 엑셀을 특히 잘써야한다. Hlookup 등

    - 2~3 군데에서의 데이터를 모아와야한다.

    - 구글 스칼라 (논문만 검색할수 있음)

    - What would you like to show? (표현하기 적합한 그래프 차트 도움)

    - https://www.nsuchaud.fr/wp-content/uploads/2019/08/analysis-type-of-chart-1024x960.jpg

    - yjpark@urbanisom.com

      

- 최종원 멘토님

  - Data Visualiztion
    - 눈에 보이지 않은 것을 테이터로 눈에 보이도록 하는 것
  - 타 영영과의 융합 (Mash Up)
  - 자연어 처리
    - 형태소 분석 -> 연관어 추출, 검색/ 빈도
    - 구문 분석  ->   연관어 추출, 검색/ 빈도
    - 의미 분석 -> 문자의 긍부정, 인사이트 추출
    - 담화 분석 -> 챗봇