let date = new Date();

const renderCalender = () => {
  const viewYear = date.getFullYear();
  const viewMonth = date.getMonth();

  document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

  const prevLast = new Date(viewYear, viewMonth, 0);
  const thisLast = new Date(viewYear, viewMonth + 1, 0);

  const PLDate = prevLast.getDate();
  const PLDay = prevLast.getDay();

  const TLDate = thisLast.getDate();
  const TLDay = thisLast.getDay();

  const prevDates = [];
  const thisDates = [...Array(TLDate + 1).keys()].slice(1);
  const nextDates = [];

  if (PLDay !== 6) {
    for (let i = 0; i < PLDay + 1; i++) {
      prevDates.unshift(PLDate - i);
    }
  }

  for (let i = 1; i < 7 - TLDay; i++) {
    nextDates.push(i);
  }

  const dates = prevDates.concat(thisDates, nextDates);
  const firstDateIndex = dates.indexOf(1);
  const lastDateIndex = dates.lastIndexOf(TLDate);

  dates.forEach((date, i) => {
    const condition = i >= firstDateIndex && i < lastDateIndex + 1
                      ? 'this'
                      : 'other';
    dates[i] = `<div class="date"><span class=${condition}>${date}</span></div>`;
  });

  document.querySelector('.dates').innerHTML = dates.join('');

  const today = new Date();
  if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
    for (let date of document.querySelectorAll('.this')) {
      if (+date.innerText === today.getDate()) {
        date.classList.add('today');
        break;
      }
    }
  }
};

renderCalender();

const prevMonth = () => {
  date.setMonth(date.getMonth() - 1);
  renderCalender();
};

const nextMonth = () => {
  date.setMonth(date.getMonth() + 1);
  renderCalender();
};

const goToday = () => {
  date = new Date();
  renderCalender();
};


var edittodo;

    function schedule_insert(){
      var num =$("#input_day").val()-1;
      $($(".dates").children()[num]).append("<div class ='parent'><div class = 'to_do'>" + $("#toDo").val()+ "</div><div><button type='button' class ='btn btn-outline-dark btn-sm m-1' onclick='edit(this)'>수정</button><button type='button' class ='btn btn-outline-dark btn-sm m-1' onclick='schedule_remove(this)'>삭제</button></div></div>");
    }

    function schedule_removeAll(){
      $(".to_do").parent().remove();
    }

    function edit(ths){
      if( $("#edit_").hasClass("d-none")){
        $("#edit_").removeClass("d-none");
        edittodo = ths;
        $('#edit_list').val($($($(edittodo).parent()).parent('.parent')).children('.to_do').text());
      }
      else{
        $("#edit_").addClass("d-none");
      }
    }

    function schedule_edit(){
      $($($(edittodo).parent()).parent('.parent')).children('.to_do').text($('#edit_list').val());
      $("#edit_").addClass("d-none");
    }

    function schedule_remove(ths){
      $($(ths).parent()).parent().remove();
    }