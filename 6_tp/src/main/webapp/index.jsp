<%@page import="com.smhrd.model.CommentDTO"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.LikesDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.LikesDAO"%>
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
<%
MemberDTO info = (MemberDTO)session.getAttribute("info");
LikesDAO ldao = new LikesDAO();
List<LikesDTO> likesBd = ldao.LikesBd();
List<LikesDTO> likesAll = ldao.LikesAll();
BoardDAO bdao = new BoardDAO();
List<BoardDTO> bdList = bdao.selectAllBoard();
MemberDAO mdao = new MemberDAO();
List<MemberDTO> mlist = mdao.Member();
CommentDAO cdao = new CommentDAO();
List<CommentDTO> cList = cdao.AllComment();
%>
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
                <a href="./Rank.jsp"><div class="header_menu_item">팔로우 순위</div></a>
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
            <% 
int like = 0;
for(int i = 0; i<likesBd.size(); i++){
	for(int o = 0; o < likesAll.size(); o++){
		if(likesBd.get(i).getBd_seq() == likesAll.get(o).getBd_seq()){
			like += 1;
		}
	}
	for(int k=0; k<bdList.size(); k++){
		if(likesBd.get(i).getBd_seq() == bdList.get(k).getBd_seq()){
			for(int j = 0; j<mlist.size(); j++){
				if(bdList.get(k).getMem_id().equals(mlist.get(j).getMem_id())){%>
            <div class="feed">
                <div class="feed_userbox">
                    <div class="user_imgbox">
                        <img class="user_img" src="./images/profile.png">
                    </div>
                    <span class="user_name"><%=mlist.get(j).getMem_nick() %></span>
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
                        <img class="feed_img" src="./images/<%=bdList.get(k).getBd_file()%>">
                    </div>
                    <div class="feed_btnbox">
                        <ul>
                            <a href=""><li><i class="fa-regular fa-thumbs-up fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-regular fa-message fa-2x"></i></li></a>
                            <a href=""><li><i class="fa-solid fa-share-nodes fa-2x"></i></li></a>
                        </ul>
                        <div class="btnbox_like"><b><%=like %>명</b>이 좋아합니다</div>
                    </div>
                    <div class="feed_textbox">
                    	<span class="user_name"><%=mlist.get(j).getMem_nick() %></span>
                        <span class="text_item">
                            <%=bdList.get(k).getBd_title() %>
                            
                        </span>
                    </div>
                    <%}
			}
			for(int n = 0; n<cList.size(); n++){
				if(bdList.get(k).getBd_seq() == cList.get(n).getBd_seq()){%>
                    <div class="comment_box">
                        <input id="check-btn" type="checkbox" />
                        <label for="check-btn">댓글 보기</label>
                        <ul class="menubars">
                            <li><span class="comment_imgbox"></span></li>
                            <li><span><%=info.getMem_nick() %></span></li>
                            <li><input type="text" placeholder="댓글 쓰기"><button>작성</button></li>
                        </ul> 
                    </div>
                    <%}%>
                </div>
            </div>
            <%
			}
		}
	}
	like = 0;
}

%>
            
            </div>
    </div>
</body>
</html>