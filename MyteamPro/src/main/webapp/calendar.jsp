<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/calendar.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/0e85598c6a.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <title>Calendar Page</title>
</head>
<body>

    <div class="container-fluid">
        <div class="row">
          <div class="col">
            <div class="logo_box">
                <a href="./index.jsp"><img src="./images/logoname.png" class="logo"></a>
            </div>
          </div>
          <!-- <div class="col"></div> -->
          <div class="col">
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
        </div>
    </div>

      <div class = "container">
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
      </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="./assets/js/calendar.js"></script>
</body>
</html>