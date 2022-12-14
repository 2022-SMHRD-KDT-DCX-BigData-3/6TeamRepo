<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.FollowDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.FollowDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Addition Page</title>
    <link rel="stylesheet" href="assets/css/add.css">
    <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
</head>
<body>
 <%
FollowDAO fdao = new FollowDAO();
List<FollowDTO> Follows = fdao.selectAllFollowing();
BoardDAO bdao = new BoardDAO();
List<BoardDTO> bdList = bdao.selectAllBoard();
MemberDAO mdao = new MemberDAO();
List<MemberDTO> mlist = mdao.Member();
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
                        	<li><a href=""><i class="fa-solid fa-pen fa-2x"></i></a></li>
                            <li><a href="./add.jsp"><i class="fa-solid fa-user-plus fa-2x"></i></a></li>
                            <li><a href=""><i class="fa-regular fa-comments fa-2x"></i></a></li>
                            <li><a href="./profile.jsp"><i class="fa-solid fa-circle-user fa-2x"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header_menu">
                <a href="./index.jsp"><div class="header_menu_item">?????? ??????</div></a>
                <a href="./rank.jsp"><div class="header_menu_item">????????? ??????</div></a>
                <a href="./calendar2.jsp"><div class="header_menu_item">?????????</div></a>
            </div>
        </div>

        <div class="rank_container">
            <div class="search_nav">
                <div class="search_box">
                    <form action="." method="post">
                        <input class="search_txt" type="text" placeholder="????????? ??????">
                        <button class="search_btn" type="submit">
                            <i class="fa-solid fa-magnifying-glass fa-2x"></i>
                        </button>
                    </form>
                </div>
            </div>
            <div class="sub_nav">
                <h3>?????? ??????
            </div>
    
            <%
int follow1 = 0;
int follow2 = 0;
int bd = 0;
for(int i = 0; i<mlist.size(); i++){%>
		<div class="rank_nav">
        <div class="rank_img"></div>
        <div class="rank_info">
            <table class="rank_table">
                <tr>
                	<th><%=mlist.get(i).getMem_nick()%></th>
                </tr>
<%for(int k = 0; k<bdList.size(); k++){
		if(mlist.get(i).getMem_id().equals(bdList.get(k).getMem_id())){
			bd += 1;
		}
	}
	for(int j = 0; j<Follows.size(); j++){
		if(mlist.get(i).getMem_id().equals(Follows.get(j).getFollower())){
			follow1 += 1;
		}
		if(mlist.get(i).getMem_id().equals(Follows.get(j).getFollowing())){
			follow2 += 1;
		}
	}%>
	<tr>
         <td>???????????? <%=bd %></td>
         <td>????????? <%=follow1 %></td>
         <td>????????? <%=follow2 %></td>
     </tr>
   </table>
                </div>
                <div class="rank_button">
                    <button class="btn">?????????</button>
                </div>
            </div>
	<%bd = 0;
	follow1 = 0;
	follow2 = 0;
}
%>
         
</body>
</html>