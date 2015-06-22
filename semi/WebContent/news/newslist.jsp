<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>사티고객지원</title>
<script src="/jquery/jquery-1.11.3.js" type="text/javascript" ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/css/style.css" />
<style type="text/css">
	.search input {
		-webkit-box-sizing: content-box;
  		-moz-box-sizing: content-box;
  		box-sizing: content-box;
	}
	.content {width: 80%;}
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
				<li><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
				<li class="selected"><a href="/news/newslist.jsp">사티사랑방</a></li>
				<li><a href="/notice/noticelist.jsp">사티고객지원</a></li>
			</ul>
		</div>
	</div>
	<div class="body">
		<div class="sidebar">
			<div class="first">
				<h2><a href="#">사티사랑방</a></h2>
				<ul>
					<li><a href="#">사티 소식</a></li>
					<li><a href="#">사티 이벤트</a></li>
					<li><a href="#">당첨자 및 공지</a></li>
					<li><a href="#">관람후기</a></li>
				</ul>
				<a href="/notice/noticeform.jsp" class="btn btn-info">사티소식 등록</a>
			</div>
		</div>
		<div class="content">
			<div class="products">
				<div id="wrapper">
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>#</th>
								<th>Column heading</th>
								<th>Column heading</th>
								<th>Column heading</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="info">
								<td>3</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="success">
								<td>4</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="danger">
								<td>5</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="warning">
								<td>6</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
							<tr class="active">
								<td>7</td>
								<td>Column content</td>
								<td>Column content</td>
								<td>Column content</td>
							</tr>
						</tbody>
					</table>
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
</body>
</html>