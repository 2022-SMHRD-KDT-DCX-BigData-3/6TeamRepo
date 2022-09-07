<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="assets/css/account.css" rel="stylesheet" />
    <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	</script>
    </head>
<body>
	<form action="animatedLogin.html" class="account-form">
		<h1>회원가입</h1>

		<div class="txtb">
			<input type="text"> <span data-placeholder="Username"></span>
		</div>

		<div class="txtb">
			<input type="text"> <span data-placeholder="Usernick"></span>
		</div>

        <div class="txtb">
			<input type="password"> <span data-placeholder="Password"></span>
		</div>

        <div class="txtb">
			<input type="password"> <span data-placeholder="PasswordCheck"></span>
		</div>

        <div class="txtb">
            <input type="date" class="birthday">
        </div>

        <div class="gender">
            <input id="gender_man" type="radio" name="gender">남성  
            <input id="gender_woman" type="radio" name="gender">여성



        </div>

        <input type="submit" class="logbtn" value="success">  

		<div class="bottom-text">
			you have account? <a href="login.jsp">login </a>
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

</body>
</html>