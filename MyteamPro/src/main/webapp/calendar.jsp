<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/calendar.css">
    <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
    <title>calendar</title>
</head>
<body>
    
    <div class="calendar_container">
        <div class="top_nav">
            <div class="logo_box"><img class="logo" src="./images/logoname.png"></div>
            <div class="icon_box"><i class="fa-solid fa-user fa-2x"></i> &nbsp&nbsp <i class="fa-solid fa-magnifying-glass fa-2x"></i></div>
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
        <script src="./assets/js/calendar.js"></script>
    </div>

</body>
</html>