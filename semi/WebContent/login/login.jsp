<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>로그인</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
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
			<div class="panel-heading">로그인</div>
			<div class="panel-body">
				<form class="form-horizontal" method="post" action="">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="inputEmail3"
								placeholder="아이디">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="비밀번호">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-default">로그인</button>
							<a href="../index.html">홈으로 가기.</a> 
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</body>
</html>