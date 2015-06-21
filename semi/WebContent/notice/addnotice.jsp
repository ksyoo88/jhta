<%@page import="notice.NoticeDao"%>
<%@page import="notice.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	request.setCharacterEncoding("utf-8");
	
	Notice notice = new Notice();
	
	String title = request.getParameter("title");
	String local = request.getParameter("local");
	String contents = request.getParameter("contents");

	notice.setTitle(title);
	notice.setLocal(local);
	notice.setContents(contents);
	
	NoticeDao dao = new NoticeDao();
	dao.addNotice(notice);
	response.sendRedirect("/notice/noticelist.jsp");
	
%>

