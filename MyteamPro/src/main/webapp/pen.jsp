<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rank Page</title>
    <link rel="stylesheet" href="assets/css/pen.css">
    <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
</head>
<body>

	<div class="main_container">
        <div class="header">
            <div class="header_inner">
                <div class="logo_box">
                    <a href="./index.jsp"><img src="./images/logoname.png" class="logo"></a>
                </div>
                <div class="icon_box">
                    <nav class="icon_box_item">
                        <ul>
                            <li><a href="./pen.jsp"><i class="fa-solid fa-pen fa-2x"></i></a></li>
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
                <a href="./calendar.jsp"><div class="header_menu_item">캘린더</div></a>
            </div>
        </div>

        <div class="story_container">
            <div class="top_nav">
                <span class="back"></span>
                <span class="commit"><a href="">업로드</a></span>
            </div>
            <div class="pic_nav">
                <div class="pic_box">
                    <span class="picbox_item">
                        <a href=""><div class="picbox_itembox">
                            <div><i class="fa-solid fa-camera fa-3x"></i></div>
                            <div>사진 선택</div>
                            <div>최대 10장</div>
                        </div></a>
                    </span>
                    <span class="picbox_item">
                        <a href=""><div class="picbox_itembox">
                            <div><i class="fa-solid fa-video fa-3x"></i></div>
                            <div>동영상 선택</div>
                            <div>최대 1분</div>
                        </div></a>
                    </span>
                </div>
            </div>
            <div class="story_nav">
                <div class="story_subbox">내용</div>
                <div class="story_box"></div>
                <div class="story_subbox">태그</div>
                <div class="tag_box">
                    <span class="tagbox_item"><a href="">#운동일지</a></span>
                    <span class="tagbox_item"><a href="">#눈바디</a></span>
                    <span class="tagbox_item"><a href="">#식단</a></span>
                    <span class="tagbox_item"><a href="">#다이어트</a></span>
                    <span class="tagbox_item"><a href="">#바디프로필</a></span>
                    <span class="tagbox_item"><a href="">#보충제</a></span>
                    <span class="tagbox_item"><a href="">#운동용품</a></span>
                    <span class="tagbox_item"><a href="">#PT</a></span>
                    <span class="tagbox_item"><a href="">태그 직접 입력</a></span>
                </div>
                <div class="story_subbox">공개 여부</div>
                <div class="select_box">
                    <select>
                        <option value="1">전체 공개</option>
                        <option value="2">팔로우 공개</option>
                        <option value="2">나만 보기</option>
                    </select>
                </div>
            </div>
        </div>

    </div>

</body>
</html>