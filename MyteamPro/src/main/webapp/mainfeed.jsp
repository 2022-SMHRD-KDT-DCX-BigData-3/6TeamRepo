<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/mainfeed.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/0e85598c6a.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="main_container">
		<div class="top_nav">
            <div class="logo_box">
            	<a href="./mainfeed.jsp"><img class="logo" src="./images/logoname.png"></a>
           	</div>
            <div class="icon_box">
            	<a href="./profile.jsp"> <i class="fa-solid fa-user fa-2x"></a></i> &nbsp&nbsp 
				<i class="fa-solid fa-magnifying-glass fa-2x"></i>
			</div>
        </div>

		<!-- <div class="menu_nav">
            <div class="menu_nav_item">메인</div>
            <div class="menu_nav_item">팔로우 순위</div>
            <div class="menu_nav_item">게시판</div>
            <div class="menu_nav_item">프로필</div>
        </div> -->
		<!-- </div> -->
		<ul>
			<li><a class="current" href="mainfeed.jsp">스토리</a></li>
			<li><a href="rank.jsp">팔로우 순위</a></li>
			<li><a href="/board.jsp">게시판</a></li>
			<li><a href="/board.jsp">1:1 대화방</a></li>
		</ul>

		<br> <a style="font-size: 14px">오늘의 인기 스토리 <a href="#"><div
					class=story-plus>
					<i class="fa-sharp fa-solid fa-pencil"></i>
				</div></a>
		</a>

		<div class="main">
			<div class="main-img1">
				<div class="pr-img">
					<img class="web_img"
						src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MTNfMTc5%2FMDAxNjI2MTQxNTM1Njkz.FepJSK21NB7QrPPtJTDpBIu6Gs6p-SuKLOMkbiO05VYg.w6tONHUz8t3zZvPLZ_-ZEBb8290rFyLvkqFiz-bVCAQg.JPEG.chimmy1004%2FIMG_0530.JPG&type=sc960_832"
						alt="프로필_사진">
					<!-- <div class="add_icon"> + </div> -->
				</div>
				nick name

			</div>
			<div class="main-img2">
				<img src="./images/cover 5.png" class="main-img">
			</div>
		</div>
		<div class="main-tag">
			<img src="./images/up.png" class="main-tag"> <img
				src="./images/comment.png" class="main-tag"> <br>n명이
			좋아합니다.
		</div>

	</div>


</body>
</html>