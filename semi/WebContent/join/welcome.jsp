<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사티 회원가입을 환영합니다.</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js" type="text/javascript" ></script>
<link rel="stylesheet" href="/css/style.css" />
<style type="text/css">
	.products {width: 650px;}
	.container {width: 700px;}
	.search input {
		-webkit-box-sizing: content-box;
  		-moz-box-sizing: content-box;
  		box-sizing: content-box;
	}
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
					<li class="selected"><a href="/join/joinform.jsp">회원가입</a></li>
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
				<li><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
				<li><a href="/news/news.html">사티사랑방</a></li>
				<li><a href="/notice/notice.html">사티고객지원</a></li>
			</ul>
		</div>
	</div>
	<div class="body">
		<div class="alert alert-dismissible alert-warning">
			<h4>환영합니다!</h4>
			<p>사티 회원가입이 완료되었습니다.다양한 공연정보를 확인하시길 바랍니다. <a href="/index.jsp" class="alert-link">HOME</a>&nbsp;&nbsp;<a href="/login/login.jsp" class="alert-link">login</a></p>
		</div>
	</div>
</body>
</html>