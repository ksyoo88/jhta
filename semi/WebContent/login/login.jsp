<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String login = request.getParameter("login");

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
.container {
	width: 600px;
	margin-top: 200px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="panel panel-default">
			<%if("failed".equals(login)) { %>
			<div class="alert alert-dismissible alert-danger">
			  	<strong>로그인 실패</strong>
			</div>
			<%} %>
			<div class="panel-heading">로그인</div>
			<div class="panel-body">
				<form class="form-horizontal" method="post" action="/login/logincheck.jsp">
					<div class="form-group">
						<label for="memberId" class="col-sm-3 control-label">아이디</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="memberId" placeholder="아이디" name="memberId">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-3 control-label">비밀번호</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="password" placeholder="비밀번호" name="password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-default">로그인</button>
							<a href="../join/joinform.jsp" class="btn btn-default">회원가입</a>
							<a href="/index.jsp" class="btn btn-default">홈으로 가기.</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>