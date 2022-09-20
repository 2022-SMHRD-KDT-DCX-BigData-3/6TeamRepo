<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="assets/css/Join.css" rel="stylesheet" />
    <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	</script>
    </head>
<body>
	<form action="JoinCon.do" class="account-form" method="post">
		<h1>회원가입</h1>

		<div class="txtb">
			<input type="text" name="id" > <span data-placeholder="UserId"></span>
			<font id = "checkId" size = "2"></font>
		</div>
		
		<div class="txtb">
			<input type="password" name="pw"> <span data-placeholder="Password"></span>
		</div>
		
		<div class="txtb">
			<input type="text" name="name"> <span data-placeholder="UserName"></span>
		</div>
		
		<div class="txtb">
			<input type="text" name="nick"> <span data-placeholder="UserNick"></span>
		</div>

        <div class="txtb">
            <input type="date" class="birthday" name="birth">
        </div>

        <div class="gender">
            <input id="gender_man" type="radio" name="gender">남성  
            <input id="gender_woman" type="radio" name="gender">여성

        </div>

        <input type="submit" class="logbtn" value="Join">  

		<div class="bottom-text">
			you have account? <a href="Login.jsp">login </a>
		</div>

	</form>

	<script type="text/javascript">
        $(".txtb input").on("focus",function(){
            $(this).addClass("focus");
        });

        $(".txtb input").on("blur",function(){
            if($(this).val() == "")
            $(this).removeClass("focus");
        })
    </script>
    
    		<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<!-- 아이디 중복체크 ajax -->
			<script type="text/javascript">
			// 아이디 중복체크 버튼을 눌렀을때!
			$('.txtb').focusout(function(){
				// 사용자가 입력한 email 가져오기
				// input 태그인데 name = email인 요소의 값을 가져올것
				// 2개의(로그인, 회원가입 값이 있기 때문에 인덱스 번호를 사용해서 회원가입에 있는 요소의 값을 가져올 것
				var id = $('input[name=id]').eq('0').val();
				console.log(id);
				
				// ajax 사용해서 비동기통신으로 아이디가 있는지 없는지 체크 후 결과값 받아오기
				$.ajax({
					//url : 어디와 통신을 할것인지? action에 작성하는 값과 비슷
					url : "IdCheckCon.do",
					// data : url 작성한 곳에 데이터를 보낼때
					data :{
						"id" : id
					},
					// dataType : 결과값을 어떤 타입으로 받아올 것인지
					dataType : "text",
					// success : 통신 성공시
					success : function(result){
						if(result == 'true'){
							$("#checkId").html('사용할 수 없는 아이디입니다')
							$("#checkId").attr('color', 'red');
						}else{
							$("#checkId").html('사용할 수 있는 아이디입니다')
							$("#checkId").attr('color', 'green');
						}
					},
					// error : 통신 실패시
					error : function(e){
						alert("실패");
						console.log(e)
					}
				})
				
			})
			</script>

</body>
</html>