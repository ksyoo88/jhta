<%@page import="comm.CommUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="book.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>공연&middot;전시예매</title>
<script src="/jquery/jquery-1.11.3.js" type="text/javascript" ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="js/book.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/css/style.css" />

<script>
  $(function() {
    $( "#tDate" ).datepicker({
      showOn: "button",
      buttonImage: "photo/calendar.gif",
      buttonImageOnly: true,
      buttonText: "Select date",
      dateFormat: "yy-mm-dd"
    });
  });
  
  $(function() {
	    $( "#lDate" ).datepicker({
	      showOn: "button",
	      buttonImage: "photo/calendar.gif",
	      buttonImageOnly: true,
	      buttonText: "Select date",
	      dateFormat: "yy-mm-dd"
	    });
	  });
</script>

<style type="text/css">
	.left {
		float: left;
		width: 600px;
	}
	.left label {
		width: 70px;
	}
	
	.right {
		float: right;
		width: 100px;
	}
	.search input {
		-webkit-box-sizing: content-box;
  		-moz-box-sizing: content-box;
  		box-sizing: content-box;
	}
	
	#wrapper { width: 650px; padding: 10px; border: 1px dotted red; overflow: auto;}
	.photo {float:left; width:150px; margin: 20px; padding: 10px;   }
	.photo p {margin: 3px 0 0 0; text-align:center; font-family: sans-serif; font-size: 14px;}
	.photo img{width:198px; height:288px;}
</style>

</head>
<body>
	<div class="header">
		<div>
			<a href="/index.jsp" id="logo"><img src="/images/common/logo.gif" alt="logo" /></a>
			<div class="navigation">
				<ul class="first">
					<li class="first"><a href="/index.jsp">HOME</a></li>
					<li><a href="/login/login.jsp">로그인</a></li>
					<li><a href="/login/logout.jsp">로그아웃</a></li>
					<li><a href="/mypage/mypage.html">나의 사티룸</a></li>
					<li><a href="/join/joinform.jsp">회원가입</a></li>
					<li><a href="/etc/sitemap.jsp">사이트맵</a></li>
				</ul>
			</div>
			<form action="" class="search">
				<input type="text" value="search" onblur="this.value=!this.value?'search':this.value;" onfocus="this.select()" onclick="this.value='';" /> 
				<input type="submit" id="submit" value="" />
			</form>
		</div>
		<div id="navigation">
			<ul>
				<li class="selected"><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
				<li><a href="/news/newslist.jsp">사티사랑방</a></li>
				<li><a href="/notice/noticelist.jsp">사티고객지원</a></li>
			</ul>
		</div>
	</div>
	<div class="body">
		<div class="sidebar">
			<div class="first">
				<h2>
					<a href="#">공연&middot;전시예매</a>
				</h2>
				<ul>
					<li><a href="#">연극</a></li>
					<li><a href="#">뮤지컬</a></li>
					<li><a href="#">어린이</a></li>
					<li><a href="#">무용</a></li>
					<li><a href="#">음악</a></li>
					<li><a href="#">전통</a></li>
					<li><a href="#">전시</a></li>
				</ul>
				<a href="/book/performform.jsp" class="btn btn-info">공연 등록</a>
			</div>
		</div>
		<div class="content">
			<div class="figure">
				<!-- <img src="/images/beauty-care.jpg" alt="" /> -->
				<h1>공연&middot;전시예매</h1>
				<h5>문화로 여는 미래 예술로 나누는 행복 사랑티켓</h5>
				<form action="">
					<div class="left">
						<div class="component">
							<label>지역</label> <select name="region">
								<option>==전체==</option>
								<option value="01">서울</option>
								<option value="02">부산</option>
								<option value="03">대구</option>
								<option value="04">인천</option>
								<option value="05">광주</option>
								<option value="06">대전</option>
								<option value="07">울산</option>
								<option value="08">경기</option>
								<option value="09">충북</option>
								<option value="10">충남</option>
								<option value="11">전북</option>
								<option value="12">전남</option>
								<option value="13">경북</option>
								<option value="14">경남</option>
								<option value="15">강원</option>
								<option value="16">제주</option>
							</select>
						</div>
						<div class="component">
							<label>장르</label> <input type="radio" name="genre" value="전체" checked="checked" />전체 <input type="radio" name="genre" value="연극" />연극 <input
								type="radio" name="genre" value="뮤지컬" />뮤지컬 <input type="radio" name="genre" value="어린이" />어린이 <input type="radio" name="genre" value="무용" />무용
							<input type="radio" name="genre" value="음악" />음악 <input type="radio" name="genre" value="전통" />전통 <input type="radio" name="genre"
								value="전시" />전시
						</div>
						<div class="component" id="blank">
							<label>직접입력</label> <input type="text" size="30" name="filed" placeholder="공연/전시 명 혹은 장소를 입력하세요." />
						</div>
						<div class="component">
							<label>기간</label> 
							<input name="tName" size="15" type="text" id="tDate" readonly="readonly">~<input name="lName" size="15" type="text" id="lDate" readonly="readonly">
							<input type="radio" name="googling" value="2주내 검색" onclick="afterDateWeek(2);">2주내 검색 <input type="radio" name="googling"
								value="3개월내 검색" onclick="afterDateWeek(12);">3개월내 검색
						</div>
					</div>
					<div class="right">
						<input type="image" src="photo/btn_search.jpg" alt="submit" /> <br />
					</div>
				</form>
			</div>
			<div class="products">
				
				<div id="wrapper">
<%
	BookDao dao= new BookDao();
	List<BookVO> list=dao.getperformlist();


 for(BookVO b: list ){
	 String image = b.getImage(); 
	 String title= b.getTitle();
	 String genre= b.getGenre();
	 Date sdate= b.getStartdate();
	 Date ldate= b.getEnddate();
	 String place= b.getPlace();
	 String local= b.getLocal();
			
%>
					<div class="photo">
						<a href="/book/performview.jsp?no=<%=b.getNo() %>"><img src="../upload/perform/<%=image %>"></a>
						<h4><a href="/book/performview.jsp?no=<%=b.getNo() %>"><%=title %></a></h4>
						<p><%=genre %></p>
						<p><%=CommUtil.dateToString(sdate) %><%if(sdate != null) { %>~ <%} %> </br>
						<%=CommUtil.dateToString(ldate) %></p>
						<p><%=local %></p>
						<p><%=place %></p>
					</div>

<%
 }
%>
				</div>
				<div class="paging">
					<div class="first">
						<ul>
							<li class="selected"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li>...</li>
							<li><a href="#">34</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" style="clear:both;">
		<p>&#169; 2011 Herdesigns. All Rights Reserved.</p>
	</div>
</body>
</html>