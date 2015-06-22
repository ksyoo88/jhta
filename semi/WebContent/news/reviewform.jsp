<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	/////////////////login
	Member userInfo = (Member)session.getAttribute("USER_INFO");
	boolean login = false;
	if(userInfo != null) {
		login = true;
	}
	/////////////////
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 등록</title>
<script src="/jquery/jquery-1.11.3.js" type="text/javascript" ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
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
					<%if(!login) { %><li><a href="/login/login.jsp">로그인</a></li>
					<li><a href="/join/joinform.jsp">회원가입</a></li><%} %>
					<%if(login) { %><li><a href="/login/logout.jsp">로그아웃</a></li>
					<li><a href="/mypage/mypage.jsp">나의 사티룸</a></li><%} %>
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
					<a href="#">공지사항 등록</a>
				</h2>
			</div>
		</div>
		<div class="content">
			<div class="products">
				<div class="container">
				   <form class="form-horizontal" method="post" id="noticeform" action="addnotice.jsp">
				      <fieldset>
				         <legend>공지사항 등록</legend>
				         <div class="form-group">
				            <label for="title" class="col-lg-2 control-label">제목</label>
				            <div class="col-lg-10">
				               <input type="text" class="form-control" id="title" name="title">
				            </div>
				         </div>
				         <div class="form-group">
				            <label for="local" class="col-lg-2 control-label">지역</label>
				            <div class="col-lg-10">
				               	<select class="form-control" id="local" name="local" title="지역선택">
				                  	<option value="">== 지역 ==</option>
									<option value="전국" >전국</option>
									<option value="서울" >서울</option>
									<option value="부산" >부산</option>
									<option value="대구" >대구</option>
									<option value="인천" >인천</option>
									<option value="광주" >광주</option>
									<option value="대전" >대전</option>
									<option value="울산" >울산</option>
									<option value="경기" >경기</option>
									<option value="강원" >강원</option>
									<option value="충북" >충북</option>
									<option value="충남" >충남</option>
									<option value="전북" >전북</option>
									<option value="전남" >전남</option>
									<option value="경북" >경북</option>
									<option value="경남" >경남</option>
									<option value="제주" >제주</option>
				               	</select>
				            </div>
				         </div>
				         <div class="form-group">
				            <label for="contents" class="col-lg-2 control-label">내용</label>
				            <div class="col-lg-12" style="margin-top: 5px;">
				               <textarea class="form-control" rows="3" id="contents" name="contents" style="width: 100%;"></textarea>
				            </div>
				         </div>
				         <div class="form-group">
				            <div class="col-lg-10 col-lg-offset-9">
				               <button type="submit" class="btn btn-primary add">등록</button>
				               <button type="reset" class="btn btn-default">초기화</button>
				            </div>
				         </div>
				      </fieldset>
				   </form>
				</div>
			</div>
		</div>
	</div>



<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "contents",
    sSkinURI: "/editor/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});

$( document ).ready(function() {
	$('.add').click(function(){
		oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);

		var frm					= $('form[id=noticeform]');
		var contents			= frm.find('#contents');
		
//		if (title.val() == '') {
//			alert('제목을 입력해 주세요.');
//			return false;
//		}
		
		frm.submit();
		
		return false;
	});
});
</script>
</body>
</html>