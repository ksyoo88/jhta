
function autoLastDate () {
	var tDay = new Date();
	var tDate = tDay.getFullYear();
	document.getElementById("lDate").value = tDate+"-12-31";
 }


function autoDate () {
	var tDay = new Date();
	var tMonth = tDay.getMonth()+1;
	var tDate = tDay.getFullYear();
	if ( tMonth < 10) tMonth = "0"+tMonth;
	if ( tDate < 10) tDate = "0"+tDate;
	document.getElementById("tDate").value = tDate+"-"+tMonth+"-"+tDate;
 }

function autoDate () {
	var tDay = new Date();
	var tMonth = tDay.getMonth()+1;
	var tDate = tDay.getDate();
	if ( tMonth < 10) tMonth = "0"+tMonth;
	if ( tDate < 10) tDate = "0"+tDate;
	document.getElementById("tDate").value = tDay.getFullYear()+"-"+tMonth+"-"+tDate;
 }


function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  autoDate();
});

addLoadEvent(function() {
	  autoLastDate();
	});
	
addLoadEvent(function() {
	afterDateWeek();
	});

function afterDateWeek(week){
	var date= new Date();
	date.setTime(date.getTime()+3600*24*7*week*1000);
	
	var year= date.getFullYear();
	var month= date.getMonth()+1;
	var day= date.getDate();
	
	if(week) {
		document.getElementById("lDate").value = year+"-"+month+"-"+day;	
	}
}

function afterDateMonth(week){
	afterDateWeek(week);
}
