<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공연 등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<div class="container">
	<form class="form-horizontal" action="/book/performform" method="POST" enctype="multipart/form-data">
		<fieldset>
			<legend>공연 등록</legend>
			<div class="form-group">
				<label for="title" class="col-lg-2 control-label">공연명</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="title" name="title">
				</div>
			</div>
			<div class="form-group">
				<label for="subtitle" class="col-lg-2 control-label">부제목</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="subtitle">
				</div>
			</div>
			<div class="form-group">
				<label for="genre" class="col-lg-2 control-label">장르</label>
				<div class="col-lg-10">
					<select class="form-control" id="genre">
						<option>연극</option>
						<option>뮤지컬</option>
						<option>어린이</option>
						<option>무용</option>
						<option>음악</option>
						<option>전통</option>
						<option>전시</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="startdate" class="col-lg-2 control-label">공연기간</label>
				<div class="row">
					<div class="col-lg-4">
						<input type="text" class="form-control" id="startdate">
					</div>
					<div class="col-lg-1">
						~
					</div>
					<div class="col-lg-4">
						<input type="text" class="form-control" id="enddate">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail" class="col-lg-2 control-label">공연시간</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="inputEmail" value="오전, 오후">
				</div>
			</div>
			<div class="form-group">
				<label for="place" class="col-lg-2 control-label">장소</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="place">
				</div>
			</div>
			<div class="form-group">
				<label for="grade" class="col-lg-2 control-label">관람등급</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="grade">
				</div>
			</div>
			<div class="form-group">
				<label for="contact" class="col-lg-2 control-label">연락처</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="contact">
				</div>
			</div>
			<div class="form-group">
				<label for="seat" class="col-lg-2 control-label">총 좌석</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="seat">
				</div>
			</div>
			<div class="form-group">
				<label for="adult" class="col-lg-2 control-label">성인 가격</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="adult">
				</div>
			</div>
			<div class="form-group">
				<label for="student" class="col-lg-2 control-label">학생 가격</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="student">
				</div>
			</div>
			<div class="form-group">
				<label for="kid" class="col-lg-2 control-label">미취학 가격</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="kid">
				</div>
			</div>
			<div class="form-group">
				<label for="discountyn" class="col-lg-2 control-label">할인 여부</label>
				<div class="col-lg-10">
					<div class="checkbox">
						<label><input type="checkbox" id="discountyn"></label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="contents" class="col-lg-2 control-label">공연 정보</label>
				<div class="col-lg-10">
					<textarea class="form-control" rows="3" id="contents" style="width: 100%;"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-10">
					<button type="submit" class="btn btn-primary">등록</button>
					<button type="reset" class="btn btn-default">초기화</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "contents",
    sSkinURI: "/editor/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>
</body>
</html>