<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
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
		<div class="sidebar">
			<div class="first">
				<h2>
					<a href="#">회원 가입</a>
				</h2>
			</div>
		</div>
		<div class="content">
			<div class="products">
			<!-- 
			private String memberId;
			private String password;
			private String email;
			private String name;
			private Date birth;
			private String gender;
			private String addr;
			private String zipcode;
			private String phone;
			private Date regdate;
			 -->
			
				<div class="container">
				   <form class="form-horizontal" action="addmember.jsp" method="post">
				      <fieldset>
				         <legend>사티 가족되기</legend>


							<div class="form-group">
								<label for="memberId" class="col-lg-2 control-label">아이디</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="memberId" name="memberId">
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-lg-2 control-label">비밀번호</label>
								<div class="col-lg-10">
									<input type="password" class="form-control" id="password" name="password" placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<label for="passwordcheck" class="col-lg-2 control-label">비번 확인</label>
								<div class="col-lg-10">
									<input type="password" class="form-control" id="passwordcheck" placeholder="Password">
								</div>
							</div>

							<div class="form-group">
								<label for="name" class="col-lg-2 control-label">성명</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="name" name="name">
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="col-lg-2 control-label">이메일</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="email" name="email" placeholder="test@email.com">
								</div>
							</div>
							<div class="form-group">
								<label for="birth" class="col-lg-2 control-label">생년월일</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="birth" name="birth" placeholder="1900-01-01">
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="col-lg-2 control-label">성별</label>
								<div class="col-lg-10">
									<div class="checkbox">
										<label><input type="radio" name="gender" id="gender" value="M">남</label>
											<label> <input type="radio" name="gender" value="F">여</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="addr" class="col-lg-2 control-label">주소</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="addr" name="addr">
								</div>
							</div>
							<div class="form-group">
								<label for="zipcode" class="col-lg-2 control-label">우편번호</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="000-000">
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-lg-2 control-label">전화번호</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="phone" name="phone">
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
</body>
</html>