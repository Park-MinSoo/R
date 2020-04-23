# [  jQuery 학습 내용 ]



- $(자바스크립트)
- $('CSS선택자')   ---> $('h1'), $('div>p'), $('#target')
- $('HTML태그문자열') - 생성 --> $('<div>ㅋㅋㅋ</div>').append('#target')
- $(함수)
- $('CSS선택자', DOM객체)

- attr(), css()

  ```javascript
  attr('HTML속성명') ---> getter
  attr('HTML속성명','HTML속성값')
  attr('HTML속성명',함수)
  attr({'HTML속성명':'HTML속성값','HTML속성명':'HTML속성값',...}) ---> setter
        
  css('css속성명') ---> getter
  css('css속성명','css속성값')
  css('css속성명',함수)
  css({'css속성명':'css속성값','css속성명':'css속성값',...}) ---> setter
  ```



- html(), text()

  ```javascript
  html() ---> innerHTML
  text() ---> textContent
  
  html() ---> getter
  html('태그문자열') ---> setter
  ```

  