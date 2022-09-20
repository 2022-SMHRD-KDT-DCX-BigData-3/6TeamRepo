<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.FollowDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.FollowDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
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
<%
MemberDTO info = (MemberDTO)session.getAttribute("info");
FollowDAO fdao = new FollowDAO();
List<FollowDTO> Follows = fdao.selectAllFollowing();
BoardDAO bdao = new BoardDAO();
List<BoardDTO> bdList = bdao.selectAllBoard();
%>
<%
int follow1 = 0;
int follow2 = 0;
for(int i = 0; i<Follows.size(); i++){
	if(info.getMem_id().equals(Follows.get(i).getFollowing())){
		follow1 += 1;
	}
	if(info.getMem_id().equals(Follows.get(i).getFollower())){
		follow2 += 1;
	}
}
%>


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
                <a href=""><div class="header_menu_item">캘린더</div></a>
            </div>
        </div>

        <div class="mypage_container">
            <div class="top_nav">
                <div class="my_box">
                    <div class="img_box">
                        <div class="my_img">
                            <img class="user_img" src="./images/프로필1.jfif">
                        </div>
                    </div>
                    <div class="my_intro">
                        <div class="my_name"><%=info.getMem_nick() %></div>
                        <div class="my_follow">
                            <span class="my_followbox">팔로잉</span>
                            <span class="my_followbox"><%=follow1 %></span>
                        </div>
                        <div class="my_follow">
                            <span class="my_followbox">팔로워</span>
                            <span class="my_followbox"><%=follow2 %></span>
                        </div>
                    </div>
                    <div class="my_iconbox">
                        <div class="my_iconbox_item">
                            <section id=inline>
                                <a href=""><div class="icon"><i class="fa-regular fa-thumbs-up fa-2x"></i></div></a>
                                <div>좋아요</div>
                            </section>
                            <section id=inline>
                                <a href=""><div class="icon"><i class="fa-regular fa-bookmark fa-2x"></i></div></a>
                                <div>스크랩</div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pr_edit">
                <a href="./profile_edit.jsp">프로필 편집</a>
            </div>
            <div class="pic_nav">
                <div class="pic_box">
                    
                    <% int mboard = 0;
							for(int i = 0; i<bdList.size(); i++){
								if(bdList.get(i).getMem_id().equals(info.getMem_id())){
									mboard += 1;
									if(mboard > 0){%>
									
										<div ><%= bdList.get(i).getBd_title()%></div>
										<div ><%= bdList.get(i).getBd_file()%></div>	
									
								<% }
									else{%>
										<div class="plus">
                        					<a href="./pen.jsp"><div class="plus_box"><i class="fa-solid fa-plus fa-2x"></i></div></a>
                    					</div>
										<div class="text_box">
            								<div class="text_item1">아직 활동 게시물이 없어요!</div>
            								<div class="text_item2">운동을 완료하고 게시물을 등록해보세요.</div>
       								 	</div>
								<% }
								}
							}
						%>
                </div>
            </div>
        </div>

    </div>
</body>
</html>