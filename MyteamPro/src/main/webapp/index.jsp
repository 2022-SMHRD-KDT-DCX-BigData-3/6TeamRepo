<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <link rel="stylesheet" href="assets/css/index.css">
    <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
</head>
<body>
    
    <div class="main_container">
        <div class="header">
            <div class="header_inner">
                <div class="logo_box">
                    <a href=""><img src="./images/logoname.png" class="logo"></a>
                </div>
                <div class="icon_box">
                    <nav class="icon_box_item">
                        <ul>
                            <li><i class="fa-solid fa-user-plus fa-2x"></i></li>
                            <li><i class="fa-regular fa-comments fa-2x"></i>
                                <!-- <i class="fa-regular fa-paper-plane fa-2x"></i> -->
                            </li>
                            <li><i class="fa-solid fa-circle-user fa-2x"></i></li>
                            <!-- <li><i class="fa-solid fa-magnifying-glass fa-2x"></i></li> -->
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="header_menu">
                <div class="header_menu_item">인기 피드</div>
                <div class="header_menu_item">팔로우 순위</div>
                <div class="header_menu_item">스토리</div>
            </div>
        </div>
        
        <div class="feed_container">
            <div class="feed_header">
                <div class="hashtag_box">
                    <div class="hashtag_item">#오운완</div>
                    <div class="hashtag_item">#스쿼트</div>
                    <div class="hashtag_item">#데드리프트</div>
                    <div class="hashtag_item">#벤치프레스</div>
                    <div class="hashtag_item">#바디프로필</div>
                    <div class="hashtag_item">#다이어트</div>
                </div>
            </div>
            <div class="feed">
                <div class="feed_userbox">
                    <div class="user_imgbox">
                        <img class="user_img" src="./images/profile.png">
                    </div>
                    <div class="user_name">닉네임</div>
                    <div class="user_iconbox">
                        <nav class="user_iconbox_item">
                            <ul>
                                <li>팔로우</li>
                                <li><i class="fa-solid fa-ellipsis fa-2x"></i></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="feed_small">
                    <div class="feed_imgbox">
                        <img class="feed_img" src="./images/오운완3.jpeg">
                    </div>
                    <div class="feed_textbox"></div>
                    <div class="feed_btnbox"></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>