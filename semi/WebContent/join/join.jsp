<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 폼</title>
<link rel="stylesheet" href="css/normalize.css">
<link href='http://fonts.googleapis.com/css?family=Nunito:400,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<form action="index.jsp" method="post">
		<h1>사티 가족되기</h1>

		<fieldset>
			<legend>
				<span class="number">1. </span>기본 정보
			</legend>
			<label for="name">이름: </label> <input type="text" id="name"
				name="user_name"> <label for="mail"><br />이메일: </label> <input
				type="email" id="mail" name="user_email"> <label
				for="password"><br />비밀번호:</label> <input type="password"
				id="password" name="user_password"> <br /> <label>나이:</label>
			<input type="radio" id="under_13" value="under_13" name="user_age"><label
				for="under_13" class="light">13세 이하</label> <input type="radio"
				id="over_13" value="over_13" name="user_age"><label
				for="over_13" class="light"> 13세 이상</label>
		</fieldset>

		<fieldset>
			<legend>
				<span class="number">2. </span>상세 정보
			</legend>
			<label for="bio">짧은 자기소개:</label>
			<textarea id="bio" name="user_bio"></textarea>
		</fieldset>
		<fieldset>
			<label for="job">직업유형:</label> <select id="job" name="user_job">
				<optgroup label="Web">
					<option value="frontend_developer">Front-End Developer</option>
					<option value="php_developor">PHP Developer</option>
					<option value="python_developer">Python Developer</option>
					<option value="rails_developer">Rails Developer</option>
					<option value="web_designer">Web Designer</option>
					<option value="WordPress_developer">WordPress Developer</option>
				</optgroup>
				<optgroup label="Mobile">
					<option value="Android_developer">Androild Developer</option>
					<option value="iOS_developer">iOS Developer</option>
					<option value="mobile_designer">Mobile Designer</option>
				</optgroup>
				<optgroup label="Business">
					<option value="business_owner">Business Owner</option>
					<option value="freelancer">Freelancer</option>
				</optgroup>
				<optgroup label="Other">
					<option value="secretary">Secretary</option>
					<option value="maintenance">Maintenance</option>
				</optgroup>
			</select> <label>Interests:</label> <input type="checkbox" id="development"
				value="interest_development" name="user_interest"><label
				class="light" for="development">Development</label><br> <input
				type="checkbox" id="design" value="interest_design"
				name="user_interest"><label class="light" for="design">Design</label><br>
			<input type="checkbox" id="business" value="interest_business"
				name="user_interest"><label class="light" for="business">Business</label>

		</fieldset>
		<button type="submit">등록하기</button>
	</form>

</body>
</html>