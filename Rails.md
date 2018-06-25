### Rails

: Web Service를 만든다. => 카페를 만드는 것.





### 서비스를 만드는 두가지 방법

1. A-Z까지 모두 처음부터

2. 프랜차이즈 방식(프레임 워크를 사용)

   => 제일 편하고 많이쓰는 프레임 워크: Ruby on the Rails

: 기본적인 구조나 필요한 코드들은 알아서 제공, 좋은 웹서비스를 만들 것.



### 장점

: 초보자가 사용하기 쉽다, 가장 빠르게 내가 원하는 걸 만들 수 있다.



### MVC

1. Model : 데이터를 관리
2. View : 사용자가 보는 화면
3. Controller : 중간관리자



### 참고 명령어

- `rails generate controller (컨트롤러 이름) (각 페이지 이름) ` : 컨트롤러 뼈대 생성.
- `rails g model Post title content(:string)` : DB Table 설계도면 생성
- `rake db:migrate` : DB Table 파일 실제로 생성
- `rake db:drop` : DB Table내 모든 내용 삭제
- `rake db:seed`: DB에 Seed파일 넣기(한꺼번에 Data 저장)
- `.find(params[:id])` :`.get(params[:id])`와 같은 기능
- `session[:current_user_id] = @user.id`  : 대괄호 안에 내용만 조금 다를 뿐 같은 기능



1. config /routes.rb

   => get 'url' do (       )   end:  router part

   => (       ) : controller part



### Rails 약속

0. render를 위해 render함수가 호출될 경우,

    -> erb파일이 '컨트롤러/액션.erb'일 경우 생략가능.

    => 액션의 이름과 erb의 이름을 같게 해준다.

1. `routes.rb`

   - 'controller/action' 자동으로 'controller#action' 연결해준다.

   

