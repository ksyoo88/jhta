<%@page import="member.JoinDao"%>
<%@page import="comm.CommUtil"%>
<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	
	Member join = new Member();
	
	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String birth = request.getParameter("birth");
	String addr = request.getParameter("addr");
	String zipcode = request.getParameter("zipcode");
	String phone = request.getParameter("phone");

	join.setMemberId(memberId);
	join.setPassword(password);
	join.setName(name);
	join.setEmail(email);
	join.setAddr(addr);
	join.setBirth(CommUtil.stringToDate(birth));
	join.setPhone(phone);
	join.setZipcode(CommUtil.getNumber(zipcode));
	
	JoinDao dao = new JoinDao();
	dao.signUp(join);
	// 가입완료 페이지로....
	response.sendRedirect("/join/welcome.jsp");
%>

