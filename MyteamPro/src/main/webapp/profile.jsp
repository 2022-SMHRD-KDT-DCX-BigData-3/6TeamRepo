<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="assets/css/profile.css">
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
                            <li><i class="fa-solid fa-user-plus fa-2x"></i></li>
                            <li><i class="fa-regular fa-comments fa-2x"></i>
                                <!-- <i class="fa-regular fa-paper-plane fa-2x"></i> -->
                            </li>
                            <li><a href="./profile.jsp"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>
                            <!-- <li><i class="fa-solid fa-magnifying-glass fa-2x"></i></li> -->
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="header_menu">
                <div class="header_menu_item"><a href="./index.jsp">인기 피드</a></div>
                <div class="header_menu_item"><a href="./rank.jsp">팔로우 순위</a></div>
                <div class="header_menu_item">스토리</div>
            </div>
        </div>

        <div class="insta-container">
            <div class="top-nav">
                <div class="nick"></div>
                <div class="menu"><i class="fa-solid fa-bars pull-right fa-2x"></i></div>
            </div>
    
            <div class="ac-info">
                <div class="info_box">
                    <div class="pr-img">
                        <img class="web_img" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MTNfMTc5%2FMDAxNjI2MTQxNTM1Njkz.FepJSK21NB7QrPPtJTDpBIu6Gs6p-SuKLOMkbiO05VYg.w6tONHUz8t3zZvPLZ_-ZEBb8290rFyLvkqFiz-bVCAQg.JPEG.chimmy1004%2FIMG_0530.JPG&type=sc960_832" alt="프로필_사진">
                    </div>
                    
                    <div class="follow-box">
                        <div class="follow-item">
                            <section id=block>
                                <div>10</div>
                                <a href=""><div class="box">게시물</div></a>
                            </section>
                        </div>
                        <div class="follow-item">
                            <section id=block>
                                <div>100</div>
                                <a href=""><div class="box">팔로워</div></a>
                            </section>
                        </div>
                        <div class="follow-item">
                            <section id=block>
                                <div>100</div>
                              <a href=""><div class="box">팔로잉</div></a>
                            </section>
                        </div>  
                    </div>
                </div>
                    
                <div class="myname">
                    닉네임 <br>
                    총 0일 운동 완료
                </div> 
    
                <div class="pr_edit">
                    프로필 편집
                </div>
    
                <section class="feed_container">
    
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                    <div class="photo_item">
                        
                    </div>
                </section>
    
            </div>
        </div>

    </div>
</body>
</html>