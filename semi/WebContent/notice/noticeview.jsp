<%@page import="comm.CommUtil"%>
<%@page import="notice.Notice"%>
<%@page import="notice.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	String noStr = request.getParameter("no");
	NoticeDao dao = new NoticeDao();
	Notice notice = null;
	try {	
		int no = Integer.parseInt(noStr); 
		notice = dao.getNoticeView(no);
		if(notice == null) {
			response.sendRedirect("noticelist.jsp");
		}
		dao.updateViewCnt(no);
	} catch(NumberFormatException e) {
		response.sendRedirect("noticelist.jsp");
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록</title>
<script src="/jquery/jquery-1.11.3.js" type="text/javascript" ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
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
					<li><a href="/join/joinform.jsp">회원가입</a></li>
					<li><a href="/etc/sitemap.jsp">사이트맵</a></li>
				</ul>
			</div>
			<form action="" class="search">
				<input type="text" value="search" onblur="this.value=!this.value?'search':this.value;" onfocus="this.select()" onclick="this.value='';" /> <input
					type="submit" id="submit" value="" />
			</form>
		</div>
		<div id="navigation">
			<ul>
				<li><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
				<li><a href="/news/newslist.jsp">사티사랑방</a></li>
				<li class="selected"><a href="/notice/noticelist.jsp">사티고객지원</a></li>
			</ul>
		</div>
	</div>
	<div class="body">
		<div class="sidebar">
			<div class="first">
				<h2>
					<a href="/notice/noticelist.jsp">사티고객지원</a>
				</h2>
				<ul>
					<li class="selected"><a href="/notice/noticelist.jsp">공지사항</a></li>
					<li><a href="#">문의게시판</a></li>
				</ul>
				<a href="/notice/noticeform.jsp" class="btn btn-info">공지사항 등록</a>
			</div>
		</div>
		<div class="content">
			<div class="products">
				<div class="container">
					<div class="container">
						<h2>공지사항</h2>
						<p>사랑티켓의 중요한 소식을 알려드립니다.</p>
						<table class="table table-bordered">
							<colgroup>
								<col width="20%;" />
								<col />
							</colgroup>
							<thead>
								<tr>
									<td>제목</td>
									<th><%=notice.getTitle() %></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>등록일</td>
									<td><%=CommUtil.dateToString(notice.getRegdate()) %></td>
								</tr>
								<tr>
									<td colspan="2"><%=notice.getContents() %></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>