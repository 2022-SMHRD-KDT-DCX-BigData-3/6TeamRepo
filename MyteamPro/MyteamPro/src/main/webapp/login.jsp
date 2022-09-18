<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="assets/css/login.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>
</head>

<body>

	<form action="animatedLogin.html" class="login-form">
		<h1>로그인</h1>

		<div class="txtb">
			<input type="text"> <span data-placeholder="Username"></span>
		</div>

		<div class="txtb">
			<input type="password"> <span data-placeholder="Password"></span>
		</div>

		<input type="submit" class="logbtn" value="Login">

		<div class="bottom-text">
			Don't have account? <a href="account.jsp">Sign up</a>
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