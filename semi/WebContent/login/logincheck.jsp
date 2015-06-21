<%@page import="member.Member"%>
<%@page import="member.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	
	Member join = new Member();
	join.setMemberId(memberId);
	join.setPassword(password);
	
	LoginDao dao = new LoginDao();
	Member uesrInfo = dao.loginCheck(join);
	
	if(uesrInfo == null) {
		response.sendRedirect("/login/login.jsp?login=failed");
	} else {
		session.setAttribute("USER_INFO", uesrInfo);
		response.sendRedirect("/index.jsp");
	}

%>
