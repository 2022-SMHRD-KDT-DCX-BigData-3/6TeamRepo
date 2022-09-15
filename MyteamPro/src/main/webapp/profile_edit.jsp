<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Edit</title>
    <link rel="stylesheet" href="assets/css/profile_edit.css">
        <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
    </head>
<body>
    <style>
        .material-symbols-sharp {
          font-variation-settings:
          'FILL' 0,
          'wght' 400,
          'GRAD' 0,
          'opsz' 48
        }
        </style>
    <div class="main_container">
        <div class="header">
            <div class="header_inner">
                <div class="logo_box">
                    <a href="./index.jsp"><img src="./images/logoname.png" class="logo"></a>
                </div>
                <div class="icon_box">
                    <nav class="icon_box_item">
                        <ul>
                        	<li><a href=""><i class="fa-solid fa-pen fa-2x"></i></a></li>
                            <li><a href="./add.jsp"><i class="fa-solid fa-user-plus fa-2x"></i></a></li>
                            <li><a href=""><i class="fa-regular fa-comments fa-2x"></i></a></li>
                            <li><a href="./profile.jsp"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="header_menu">
                <a href="./index.jsp"><div class="header_menu_item">인기 피드</div></a>
                <a href="./rank.jsp"><div class="header_menu_item">팔로우 순위</div></a>
                <a href=""><div class="header_menu_item">캘린더</div></a>
            </div>
        </div>

        <div class="mypage_container">
            <div class="top_nav">
                <div class="my_box">
                    <div class="img_box">
                        <div class="my_img">
                            <img class="user_img" src="./images/run.jpg">
                            <span class="material-symbols-sharp" style="position:relative;bottom: 25px; left:90px; background-color:black; color:white;">
                              photo_camera
                            </span>
                            
                        </div>
                    </div>
                    <div class="my_intro">
                    	<form action="." method="post">	
                        <div class="my_name">닉네임<br><input type="text" class="input_name" ></div>
                        </form>
                        <div class="introduce">소개<br><textarea class="input_intro" cols="50" rows="10"></textarea></div>
                        <div class="confirm"><a href="profile.jsp"><input type="button" class="confirm" value="수정완료" style="text-align:center;background-color:black; color:white;">
                       </a>
                        </div>
                    </div>
                    
                </div>
            </div>
           
            
        </div>

    </div>
</body>
</html>