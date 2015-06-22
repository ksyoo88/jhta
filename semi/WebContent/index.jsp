<%@page import="main.PerformanceVO"%>
<%@page import="main.ReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="main.MainDAO"%>
<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Member userInfo = (Member)session.getAttribute("USER_INFO");
	boolean login = false;
	if(userInfo != null) {
		login = true;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<!--[if IE 6]>
			<link rel="stylesheet" href="css/ie6.css" type="text/css" />
		<![endif]-->
		<!--[if IE 7]>
			<link rel="stylesheet" href="css/ie7.css" type="text/css" />
		<![endif]-->
<link rel="stylesheet" href="playing/css/example.css">
<link rel="stylesheet" href="playing/css/font-awesome.min.css">
<link rel="stylesheet" href="playing/css/resize.css">

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="playing/js/jquery.slides.min.js"></script>
<script type="text/javascript" src="/js/jquery.waterwheelCarousel.js"></script>
<script type="text/javascript">
$(function() {
  $('#slides').slidesjs({
    width: 940,
    height: 528,
    play: {
      active: true,
      auto: true,
      interval: 4000,
      swap: true
    }
  });
});

$(document).ready(function () {
  var carousel = $("#carousel").waterwheelCarousel({
    flankingItems: 3,
    movingToCenter: function ($item) {
      $('#callback-output').prepend('movingToCenter: ' + $item.attr('id') + '<br/>');
    },
    movedToCenter: function ($item) {
      $('#callback-output').prepend('movedToCenter: ' + $item.attr('id') + '<br/>');
    },
    movingFromCenter: function ($item) {
      $('#callback-output').prepend('movingFromCenter: ' + $item.attr('id') + '<br/>');
    },
    movedFromCenter: function ($item) {
      $('#callback-output').prepend('movedFromCenter: ' + $item.attr('id') + '<br/>');
    },
    clickedCenter: function ($item) {
      $('#callback-output').prepend('clickedCenter: ' + $item.attr('id') + '<br/>');
    }
  });

  $('#prev').bind('click', function () {
    carousel.prev();
    return false
  });

  $('#next').bind('click', function () {
    carousel.next();
    return false;
  });

  $('#reload').bind('click', function () {
    newOptions = eval("(" + $('#newoptions').val() + ")");
    carousel.reload(newOptions);
    return false;
  });

});
</script>		
</head>
<%
	MainDAO dao = new MainDAO();
	List<ReviewVO> review = dao.getReviewList();
	List<PerformanceVO> performance = dao.getPerformance();
%>
<body>
 
	<div class="header">
		<div>
			<a href="/index.jsp" id="logo"><img src="/images/common/logo.gif" alt="logo"/></a>
			<div class="navigation">
				<ul class="first">
					<li class="first selected"><a href="/index.jsp">HOME</a></li>
					<%if(!login) { %><li><a href="/login/login.jsp">로그인</a></li>
					<li><a href="/join/joinform.jsp">회원가입</a></li><%} %>
					<%if(login) { %><li><a href="/login/logout.jsp">로그아웃</a></li>
					<li><a href="/mypage/mypage.jsp">나의 사티룸</a></li><%} %>
					<li><a href="/etc/sitemap.jsp">사이트맵</a></li>
				</ul>
			</div>
			<form action="" class="search">
				<input type="text" value="search" onblur="this.value=!this.value?'search':this.value;" onfocus="this.select()" onclick="this.value='';"/>
				<input type="submit" id="submit" value=""/>
			</form>
		</div>
		<div id="navigation">
			<ul>
				<li><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
				<li><a href="/news/newslist.jsp">사티사랑방</a></li>
				<li><a href="/notice/noticelist.jsp">사티고객지원</a></li>
			</ul>
		</div>
	</div>
		
		<!-- 메인 메뉴 롤링 시작 -->
		<div class="container">
			<div id="slides" style="height:500px;">
				<img src="http://image3.megabox.co.kr/mop/home/ad/1600x600/150616_school_1600x600.jpg" alt="">
				<img src="http://image3.megabox.co.kr/mop/home/ad/1600x600/150616_bestofme_1600x600.jpg" alt="">
				<img src="http://image3.megabox.co.kr/mop/home/ad/1600x600/150609_balt_1600x600.jpg" alt="">
				<img src="http://image3.megabox.co.kr/mop/home/ad/1600x600/150609_world_1600x600.jpg" alt="">
			</div>
		</div>				 
		<!-- 메인 메뉴 롤링 끝 -->
		
		<!--  바디 내용 시작 -->
	    <div id="jb-container">
	      <div id="jb-header">
	        <h1>공지사항<a href="/index.jsp" id="more"><img src="/images/more.png" style="float: right;" alt="logo"/></a></h1>
	        <ul>
	          <li><a href="www.naver.com">[라이브뷰잉] MOB 굿즈패키지예매권 추가 판매 안내</a></li>
	          <li><a href="www.naver.com">[무대인사] 극비수사  주연배우를 만나세요!</a></li>
	          <li><a href="www.naver.com">라이브 중계 2015 베를린 필하모닉 발트뷔네 콘서트 상영 안내</a></li>
	          <li><a href="www.naver.com">[무대인사] 메가박스에서 은밀한 유혹 주연배우를 만나세요!</a></li>
	        </ul>
	      </div>
   	      <div id="jb-header2">
	        <h1>관람후기<a href="/index.html" id="more"><img src="/images/more.png" style="float: right;" alt="logo"/></a></h1>
   	        <ul>
<%
	for(ReviewVO r : review){
		String date = r.getRegdate();
		String title =r.getTitle();
%>
			<li><a href="www.naver.com"><%= title %></a></li>
<%
			}
%>   	        
		</ul>
	      </div>
	      <div id="jb-content">
	        <h1>상영목록<a href="/index.html" id="more"><img src="/images/more.png" style="float: right;" alt="logo"/></a></h1>
		    <div id="carousel" style="margin-top: -450px;">
		     <a href="#"><img src="/images/1.jpg" id="item-1" /></a>
		     <a href="#"><img src="/images/2.jpg" id="item-2" /></a>
		     <a href="#"><img src="/images/3.jpg" id="item-3" /></a>
		     <a href="#"><img src="/images/4.jpg" id="item-4" /></a>
		     <a href="#"><img src="/images/5.jpg" id="item-5" /></a>
		     <a href="#"><img src="/images/6.jpg" id="item-6" /></a>
		     <a href="#"><img src="/images/7.jpg" id="item-7" /></a>
		     <a href="#"><img src="/images/8.jpg" id="item-8" /></a>
		     <a href="#"><img src="/images/9.jpg" id="item-9" /></a>
		   </div>
		   <a href="#" id="prev">Prev</a> | <a href="#" id="next">Next</a>
	      </div>
	      <div id="jb-sidebar">
	        <h1>최근날짜별 공연리스트<a href="/index.html" id="more"><img src="/images/more.png" style="float: right;" alt="logo"/></a></h1>
	        <div>
	        <ul>
<%
	for(PerformanceVO p : performance){
		String date = p.getRegdate();
		String title =p.getTitle();
%>
			<li><a href="/book/performview.jsp?no=<%= %>" style="display: inline-block; width:320px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"><%= title %></a><%= date %></li>
<%
			}
%>
		</ul>   	        
	        </div>
	      </div>
	      <div id="jb-footer">
	      	<h1>이벤트<a href="/index.html" id="more"><img src="/images/more.png" style="float: right;" alt="logo"/></a></h1>
	        <ul>
	          <li><a href="www.naver.com">[라이브뷰잉] MOB 굿즈패키지예매권 추가 판매 안내</a></li>
	          <li><a href="www.naver.com">[무대인사] 극비수사  주연배우를 만나세요!</a></li>
	          <li><a href="www.naver.com">라이브 중계 2015 베를린 필하모닉 발트뷔네 콘서트 상영 안내</a></li>
	          <li><a href="www.naver.com">[무대인사] 메가박스에서 은밀한 유혹 주연배우를 만나세요!</a></li>
	        </ul>
	      </div>
	    </div>
    	<!--  바디 내용 끝 -->
    	

	<div class="footer">
		<p>&#169; 2015 중앙 HTA. All Rights Reserved.</p>
	</div>
</body>
</html>