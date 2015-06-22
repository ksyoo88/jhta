<%@page import="member.Member"%>
<%@page import="comm.CommUtil"%>
<%@page import="notice.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	
	/////////////////login
	Member userInfo = (Member)session.getAttribute("USER_INFO");
	boolean login = false;
	if(userInfo != null) {
	login = true;
	}
	/////////////////

	request.setCharacterEncoding("utf-8");
	NoticeDao dao = new NoticeDao();
	Notice notice = new Notice();
	
	String pageStr = request.getParameter("page");
	String type = request.getParameter("type");
	String keyword = request.getParameter("keyword");
	
	notice.setType(type);
	notice.setKeyword(keyword);
	
	int pageNo = 1;
	try {
		if(pageStr != null && !pageStr.trim().isEmpty()) {
			pageNo = Integer.parseInt(pageStr);
		}
	} catch(NumberFormatException e) {
		pageNo = 1;
	}
	int total = dao.getNoticeCnt();
	int num = total - (pageNo - 1)*10;
	int lastPage = total%10 == 0? total/10 : total/10 +1;
	int startRange = (pageNo/10)+1;
	int endRange = (total+10)/10;
	if(endRange > lastPage) {
		endRange = lastPage;
	}
	if(pageNo < 1) {
		pageNo = 1;
	}
	if(pageNo > lastPage) {
		pageNo = lastPage;
	}
	
	notice.setPage(pageNo);
	ArrayList<Notice> list = dao.getNoticeList(notice);
	
	
%>
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
<script type="text/javascript">
$( document ).ready(function() {
	$('#searchBtn').click(function(){

		var frm					= $('form[id=noticelist]');
		
		frm.submit();
		return false;
	});
});
</script>
</head>
<body>
	<div class="header">
		<div>
			<a href="/index.jsp" id="logo"><img src="/images/common/logo.gif" alt="logo" /></a>
			<div class="navigation">
				<ul class="first">
					<li class="first"><a href="/index.jsp">HOME</a></li>
					<%if(!login) { %><li><a href="/login/login.jsp">로그인</a></li>
					<li><a href="/join/joinform.jsp">회원가입</a></li><%} %>
					<%if(login) { %><li><a href="/login/logout.jsp">로그아웃</a></li>
					<li><a href="/mypage/mypage.jsp">나의 사티룸</a></li><%} %>
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
				<div id="wrapper">
					<form action="noticelist.jsp" method="get" id="noticelist">
						<select name="type">
							<option value="title" <%if("title".equals(type)) {%>selected="selected"<%} %>>제목</option>
							<option value="contents" <%if("contents".equals(type)) {%>selected="selected"<%} %>>내용</option>
						</select>
						<label><input type="text" name="keyword" <%if(keyword != null) { %>value="<%=keyword %>"<%} %> /></label>
						<button type="button" id="searchBtn">검색</button>
					</form>
					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>#</th>
								<th>제목</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
<%
	if(list.size() == 0) {
%>
							<tr>
								<td colspan="4" style="text-align: center;">검색결과가 없습니다.</td>
							</tr>
<%	
	} else {
		for(Notice n : list) {
%>
							<tr>
								<td><%=num-- %></td>
								<td><a href="noticeview.jsp?no=<%=n.getNo()%>"><%=n.getLocal()%>&nbsp;<%=n.getTitle() %></a></td>
								<td><%=CommUtil.dateToString(n.getRegdate()) %></td>
								<td><%=n.getHit() %></td>
							</tr>
<%	
		}
	}
%>
						</tbody>
					</table>
				</div>
				
				<div class="paging">
					<div class="first">
						<ul>
							<li><a href="noticelist.jsp?page=1">&lt;&lt;</a></li>
							<li><a href="noticelist.jsp?page=<%if(pageNo <= 1) {out.print(1); } else {out.print(pageNo-1);}%>">&lt;</a></li>
<%
	for(int i=(pageNo/10)+1; i<=(total+10)/10; i++) {
%>
							<li <%if(pageNo==i) { %>class="selected"<%} %>><a href="noticelist.jsp?page=<%=i%>"><%=i %></a></li>
<%
	}
%>
							<li><a href="noticelist.jsp?page=<%if(pageNo >= lastPage) {out.print(lastPage); } else {out.print(pageNo+1);}%>">&gt;</a></li>
							<li><a href="noticelist.jsp?page=<%=lastPage %>">&gt;&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>