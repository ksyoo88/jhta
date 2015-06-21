<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Her Designs</title>
<link rel="stylesheet" href="/css/style.css" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js" type="text/javascript" ></script>
<style type="text/css">
	.list-group {
		display: inline-block;
		width: 150px;
		float: left;
		margin-right: 5px;
	}
</style>
</head>
<body>
	<div class="header">
		<div>
			<a href="/index.jsp" id="logo"><img src="/images/common/logo.gif" alt="logo"/></a>
			<div class="navigation">
				<ul class="first">
					<li class="first"><a href="/index.jsp">HOME</a></li>
					<li><a href="/login/login.jsp">로그인</a></li>
					<li><a href="/login/logout.jsp">로그아웃</a></li>
					<li><a href="/mypage/mypage.html">나의 사티룸</a></li>
					<li><a href="/join/joinform.jsp">회원가입</a></li>
					<li class="selected"><a href="/etc/sitemap.jsp">사이트맵</a></li>
				</ul>
			</div>
			<form action="" class="search">
				<input type="text" value="search" onblur="this.value=!this.value?'search':this.value;" onfocus="this.select()" onclick="this.value='';"/>
				<input type="submit" id="submit" value=""/>
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
				<h2><a href="#">사이트맵</a></h2>
			</div>
		</div>
		<div class="content">
			<div class="products">
				<div class="list-group">
					<a href="#" class="list-group-item active"> 공연&middot;전시예매 </a>
					<a href="#" class="list-group-item">연극</a>
					<a href="#" class="list-group-item">뮤지컬</a>
					<a href="#" class="list-group-item">어린이</a>
					<a href="#" class="list-group-item">무용</a>
					<a href="#" class="list-group-item">음악</a>
					<a href="#" class="list-group-item">전통</a>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active"> 사티사랑방 </a>
					<a href="#" class="list-group-item">사티 소식</a>
					<a href="#" class="list-group-item">사티 이벤트</a>
					<a href="#" class="list-group-item">당첨자 및 공지</a>
					<a href="#" class="list-group-item">관람후기</a>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active"> 사티고객지원 </a>
					<a href="#" class="list-group-item">공지사항</a>
					<a href="#" class="list-group-item">문의 게시판</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>