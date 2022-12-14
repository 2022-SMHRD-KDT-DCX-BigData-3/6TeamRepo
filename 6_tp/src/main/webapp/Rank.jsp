<%@page import="com.smhrd.model.FollowDTO"%>
<%@page import="com.smhrd.model.FollowDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rank Page</title>
    <link rel="stylesheet" href="assets/css/Rank.css">
    <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
</head>
<body>
<%
MemberDAO mdao = new MemberDAO();
List<MemberDTO> mlist = mdao.Member();
FollowDAO fdao = new FollowDAO();
List<FollowDTO> Follows = fdao.selectAllFollowing();
List<FollowDTO> Following = fdao.FollowingRank();
MemberDTO info = (MemberDTO)session.getAttribute("info");
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
                <div class="header_menu_item"><a href="./index.jsp">인기 피드</a></div>
                <div class="header_menu_item"><a href="./Rank.jsp">팔로우 순위</a></div>
                <div class="header_menu_item"><a href="./calendar.jsp">캘린더</a></div>
            </div>
        </div>

        <div class="rank_container">
            <div class="sub_nav">
                <h3>오늘의 인기회원
            </div>
    
            <%
int follow1 = 0;
int follow2 = 0;
for(int i = 0; i < Following.size(); i++){
	for(int k = 0; k < mlist.size(); k++){
		if(Following.get(i).getFollowing().equals(mlist.get(k).getMem_id())){
			
			for(int j = 0; j<Follows.size(); j++){
				if(Following.get(i).getFollowing().equals(Follows.get(j).getFollowing())){
					follow1 += 1;
				}
				if(Following.get(i).getFollowing().equals(Follows.get(j).getFollower())){
					follow2 += 1;
				}
			}%>
	<div class="rank_nav">
                <div class="rank_img"></div>
                <div class="rank_info">
                    <table class="rank_table">
                        <tr>
			<th><%=mlist.get(k).getMem_nick() %></th>
		       </tr>
                        <tr>
			<td>운동기록 10</td>
			<td>팔로워<%=follow1 %></td>
			<td>팔로잉<%=follow2 %></td>
			</tr>
                    </table>
                </div>
                <div class="rank_button">
                    <button class="btn">팔로우</button>
                </div>
            </div>
		<%}
	}
	
follow1 = 0;
follow2 = 0;
}
%>

    		<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

<script type="text/javascript">
$('#btn').on('click', function(){
	for(var i = 0; i<Following.size(); i++){
		for(var k = 0; k < mlist.size(); k++){
			if(Following.get(i).getFollowing().equals(mlist.get(k).getMem_id())){
				var id = 'mlist.get(k).getMem_id()'
				console.log(id);
				
				}
			}
		}
	}
}

</script>
</body>
</html>