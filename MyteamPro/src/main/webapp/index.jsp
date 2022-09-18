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
                    <a href="./index.jsp"><img src="./images/logoname.png" class="logo"></a>
                </div>
                <div class="icon_box">
                    <div class="icon_box_item">
                        <ul>
                        	<li><a href="./pen.jsp"><i class="fa-solid fa-pen fa-2x"></i></a></li>
                            <li><a href="./add.jsp"><i class="fa-solid fa-user-plus fa-2x"></i></a></li>
                            <li><a href=""><i class="fa-regular fa-comments fa-2x"></i></a></li>
                            <li><a href="./profile.jsp"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header_menu">
                <a href="./index.jsp"><div class="header_menu_item">인기 피드</div></a>
                <a href="./rank.jsp"><div class="header_menu_item">팔로우 순위</div></a>
                <a href="./calendar.jsp"><div class="header_menu_item">캘린더</div></a>
            </div>
        </div>
        
        <div class="feed_container">
            <div class="feed_header">
                <div class="hashtag_box">
                    <a href=""><div class="hashtag_item">#오운완</div></a>
                    <a href=""><div class="hashtag_item">#스쿼트</div></a>
                    <a href=""><div class="hashtag_item">#데드리프트</div></a>
                    <a href=""><div class="hashtag_item">#벤치프레스</div></a>
                    <a href=""><div class="hashtag_item">#바디프로필</div></a>
                    <a href=""><div class="hashtag_item">#다이어트</div></a>
                </div>
            </div>
            <div class="feed">
                <div class="feed_userbox">
                    <div class="user_imgbox">
                        <img class="user_img" src="./images/프로필1.png">
                    </div>
                    <span class="user_name">hellohellchang</span>
                    <div class="user_iconbox">
                        <div class="user_iconbox_item">
                            <ul>
                                <li><a href="">팔로우</a></li>
                                <li>
                                <%-- <i class="fa-solid fa-ellipsis fa-2x"></i> --%>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="feed_small">
                    <div class="feed_imgbox">
                        <img class="feed_img" src="./images/오운완3.jpeg">
                    </div>
                    <div class="feed_btnbox">
                        <ul>
                            <a href=""><li><i class="fa-regular fa-thumbs-up fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-regular fa-message fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-solid fa-share-nodes fa-2x"></i></li></a>
                        </ul>
                        <div class="btnbox_like"><b>15명</b>이 좋아합니다</div>
                    </div>
                    <div class="feed_textbox">
                    	<span class="user_name">hellohellchang</span>
                        <span class="text_item">
                            오운완!!  3대 800까지 가즈아!
                        </span>
                    </div>
                    <div class="comment_box">
                        <input id="check-btn" type="checkbox" />
                        <label for="check-btn">댓글 보기</label>
                        <ul class="menubars">
                            <li><span class="comment_imgbox"></span></li>
                            <li><span>닉네임</span></li>
                            <li><input type="text" placeholder="댓글 쓰기"><button>작성</button></li>
                        </ul> 
                    </div>
                </div>
            </div>
            <div class="feed">
                <div class="feed_userbox">
                    <div class="user_imgbox">
                        <img class="user_img" src="./images/profile.png">
                    </div>
                    <span class="user_name">gurueming</span>
                    <div class="user_iconbox">
                        <div class="user_iconbox_item">
                            <ul>
                                <li><a href="">팔로우</a></li>
                                <li>
                                <%-- <i class="fa-solid fa-ellipsis fa-2x"></i> --%>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="feed_small">
                    <div class="feed_imgbox">
                        <img class="feed_img" src="./images/피드1.jpg">
                    </div>
                    <div class="feed_btnbox">
                        <ul>
                            <a href=""><li><i class="fa-regular fa-thumbs-up fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-regular fa-message fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-solid fa-share-nodes fa-2x"></i></li></a>
                        </ul>
                        <div class="btnbox_like"><b>11명</b>이 좋아합니다</div>
                    </div>
                    <div class="feed_textbox">
                    	<span class="user_name">gurueming</span>
                        <span class="text_item">
                            날씨가 이렇게 좋은데 운동 가야겠죠?
                        </span>
                    </div>
                    <div class="comment_box">
                        <input id="check-btn" type="checkbox" />
                        <label for="check-btn">댓글 보기</label>
                        <ul class="menubars">
                            <li><span class="comment_imgbox"></span></li>
                            <li><span>닉네임</span></li>
                            <li><input type="text" placeholder="댓글 쓰기"><button>작성</button></li>
                        </ul> 
                    </div>
                </div>
            </div>
        </div>
        <div class="feed">
                <div class="feed_userbox">
                    <div class="user_imgbox">
                        <img class="user_img" src="./images/프로필2.png">
                    </div>
                    <span class="user_name">imqueen</span>
                    <div class="user_iconbox">
                        <div class="user_iconbox_item">
                            <ul>
                                <li><a href="">팔로우</a></li>
                                <li>
                                <!-- <i class="fa-solid fa-ellipsis fa-2x"></i> -->
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="feed_small">
                    <div class="feed_imgbox">
                        <img class="feed_img" src="https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/70/5177e4686d9ce13664b265fbb594fdae_res.jpeg">
                    </div>
                    <div class="feed_btnbox">
                        <ul>
                            <a href=""><li><i class="fa-regular fa-thumbs-up fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-regular fa-message fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-solid fa-share-nodes fa-2x"></i></li></a>
                        </ul>
                        <div class="btnbox_like"><b>1100명</b>이 좋아합니다</div>
                    </div>
                    <div class="feed_textbox">
                    	<span class="user_name">imqueen</span>
                        <span class="text_item">
                            추석에 먹은 것 반성!
                        </span>
                    </div>
                    <div class="comment_box">
                        <input id="check-btn" type="checkbox" />
                        <label for="check-btn">댓글 보기</label>
                        <ul class="menubars">
                            <li><span class="comment_imgbox"></span></li>
                            <li><span>닉네임</span></li>
                            <li><input type="text" placeholder="댓글 쓰기"><button>작성</button></li>
                        </ul> 
                    </div>
                </div>
            </div>
    </div>
</body>
</html>