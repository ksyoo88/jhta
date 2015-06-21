<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	Member userInfo = (Member)session.getAttribute("USER_INFO");
	boolean login = false;
	if(userInfo != null) {
		login = true;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Her Designs</title>
		<link rel="stylesheet" href="/css/style.css" type="text/css" />
	</head>
	<body>
		<div class="header">
			<div>
				<a href="/index.jsp" id="logo"><img src="/images/common/logo.gif" alt="logo"/></a>
				<div class="navigation">
					<ul class="first">
						<li class="first selected"><a href="/index.jsp">HOME</a></li>
						<%if(!login) { %><li><a href="/login/login.jsp">로그인</a></li>
						<li><a href="/join/joinform.jsp">회원가입</a></li><%} %>
						<%if(login) { %><li><a href="/login/logout.jsp">로그아웃</a></li>
						<li><a href="/mypage/mypage.jsp">나의 사티룸</a></li><%} %>
						<li><a href="/etc/sitemap.jsp">사이트맵</a></li>
					</ul>
				</div>
				<form action="" class="search">
					<input type="text" value="search" onblur="this.value=!this.value?'search':this.value;" onfocus="this.select()" onclick="this.value='';"/>
					<input type="submit" id="submit" value=""/>
				</form>
			</div>
			<div id="navigation">
				<ul>
					<li><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
					<li><a href="/news/news.jsp">사티사랑방</a></li>
					<li><a href="/notice/notice.jsp">사티고객지원</a></li>
				</ul>
			</div>
		</div>
		<div class="body">
			<div class="featured">
				<a href="blog.jsp"><img src="/images/advertisement.jpg" alt=""/></a>
				<div class="gallery">
					<a href="new_arrival.jsp"><img src="/images/aurora.jpg" alt=""/></a>
					<ul class="first">
						<li><a href="new_arrival.jsp"><img src="/images/summer-collection.jpg" alt=""/></a></li>
						<li><a href="new_arrival.jsp"><img src="/images/beach-bride.jpg" alt=""/></a></li>
						<li><a href="new_arrival.jsp"><img src="/images/motherhood-apparel.jpg" alt=""/></a></li>
					</ul>
					<ul>
						<li><a href="new_arrival.jsp"><img src="/images/fashionable.jpg" alt=""/></a></li>
						<li><a href="new_arrival.jsp"><img src="/images/accessories.jpg" alt=""/></a></li>
						<li><a href="new_arrival.jsp"><img src="/images/skin-perfect.jpg" alt=""/></a></li>
					</ul>
				</div>
			</div>
			<div class="article">
				<div class="first">
					<h3>Please Read</h3>
					<p>This website template has been designed by <a href="http://www.freewebsitetemplates.com/">Free Website Templates</a> for you, for free. You can replace all this text with your own text.</p>
					<p>You can remove any link to our website from this website template, you're free to use this website template without linking back to us.</p>
					<p>If you're having problems editing this website template, then don't hesitate to ask for help on the <a href="http://www.freewebsitetemplates.com/forums/">Forum</a>.</p>
					<p>Before using a template from Free Website Templates, you must read all the for further information <a href="http://www.freewebsitetemplates.com/about/terms">Terms of Use</a></p>
				</div>
				<div>
					<h3>Sed Elementum</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vestibulum nibh eget justo dapibus eu porttitor purus hendrerit.</p>
					<a href="http://www.freewebsitetemplates.com">www.freewebsitetemplates.com</a>
					<a href="http://www.freewebsitetemplates.com/forums/">www.freewebsitetemplates.com/forum</a>
				</div>
				<div class="connect">
					<h2>Follow us</h2>
					<a href="http://facebook.com/freewebsitetemplates" id="facebook">Facebook</a>
					<a href="http://twitter.com/fwtemplates" id="twitter">Twitter</a>
					<a href="#" id="comments">Comments</a>
					<a href="http://www.flickr.com/freewebsitetemplates/" id="flickr">Flickr</a>
				</div>
			</div>
		</div>
		<div class="footer">
			<p>&#169; 2011 Herdesigns. All Rights Reserved.</p>
		</div>
	</body>
</html>