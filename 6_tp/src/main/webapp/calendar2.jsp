<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./assets/css/calendar2.css">
	<script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<title>calendar</title>
</head>
<body>

	<div class="calendar_container">
        <div class="top_nav">
            <div class="logo_box">
            	<a href = "./index.jsp"><img class="logo" src="./images/logoname.png"></a>
            </div>
            <div class="icon_box">
            	<a href="./profile.jsp"><i class="fa-solid fa-user fa-2x"></i></a> &nbsp&nbsp
            	<i class="fa-solid fa-magnifying-glass fa-2x"></i>
           	</div>
        </div>

        <div class = "title m-1 p-1">
            <b>WEEKLY PLANNER</b>
        </div>

        <div class="calendar">
            <div class="header">
            <div class="year-month"></div>
            <div class="nav">
                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                <button class="nav-btn go-today" onclick="goToday()">Today</button>
                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
            </div>
            </div>
            <div class="main">
            <div class="days">
                <div class="day">일</div>
                <div class="day">월</div>
                <div class="day">화</div>
                <div class="day">수</div>
                <div class="day">목</div>
                <div class="day">금</div>
                <div class="day">토</div>
            </div>
            <div class="dates"></div>
            </div>
        </div>
        <script src="./assets/js/calendar2.js"></script>

        <div class = "container">
            <div class="input-group flex-nowrap m-1 p-1">
            <div class="input-group-prepend m-1">
                <span class="input-group-text">날짜</span>
            </div>
            <input id = "input_day" type="text" class="form-control m-1" placeholder="날짜를 입력하세요">
            <div class="input-group-prepend m-1">
                <span class="input-group-text">할일</span>
            </div>
            <input id ="toDo" type="text" class="form-control m-1" placeholder="할일을 입력하세요">
            <button type="button" class ="btn btn-outline-dark m-1" onclick="schedule_insert()">입력</button>
            <button type="button" class ="btn btn-outline-dark m-1" onclick="schedule_removeAll()">모두삭제</button>
            </div>
            <div id ="edit_" class="input-group flex-nowrap m-1 p-1 d-none">
            <div class="input-group-prepend m-1">
                <span class="input-group-text">변경사항</span>
            </div>
            <input id = "edit_list" type="text" class="form-control m-1" placeholder="변경사항을 입력하세요">
            <button type="button" class ="btn btn-outline-dark m-1" onclick="schedule_edit()">변경</button>
            </div>
        
            <!-- <div class ="list">
            <table class ="table ttodo-list">
                <thead>
                    <th class ="text-danger">Sunday(7)</th>
                    <th>Monday(1)</th>
                    <th>Tuesday(2)</th>
                    <th>Wednesday(3)</th>
                    <th>Thursday(4)</th>
                    <th>Friday(5)</th>
                    <th class ="text-primary">Saturday(6)</th>
                    
                </th>
                <tr class="todo">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                </tr>
            </table>
            </div> -->
        </div>
    </div>

</body>
</html>