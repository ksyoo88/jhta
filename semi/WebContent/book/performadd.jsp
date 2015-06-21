<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="book.*, java.util.*"%>
<%
String saveDirectory= application.getRealPath("/upload/perform");
int maxPostSize= 1024*1024*10;
FileRenamePolicy policy= new DefaultFileRenamePolicy();
MultipartRequest r= new MultipartRequest(request, saveDirectory,maxPostSize, "utf-8",policy);


	String title = r.getParameter("title");
	String subtitle = r.getParameter("subtitle");
	String genre = r.getParameter("genre");
	String startdate = r.getParameter("startdate");
	String enddate = r.getParameter("enddate");
	String time = r.getParameter("time");
	String runtime = r.getParameter("runtime");
	String place = r.getParameter("place");
	String grede = r.getParameter("grade");
	String contact = r.getParameter("contact");
	String seat = r.getParameter("seat");
	String adult = r.getParameter("adult");
	String student = r.getParameter("student");
	String kid = r.getParameter("kid");
	String discount = r.getParameter("discount");
	String content = r.getParameter("contents");
	String image= r.getFilesystemName("photo");
	String local= r.getParameter("local");

	SimpleDateFormat SDformat= new SimpleDateFormat("yyyy-MM-dd");
	Date sdate=SDformat.parse(startdate);
	Date ldate=SDformat.parse(enddate);
	
	
	BookDao dao = new BookDao();
	int no= dao.getNO();
	
	
	
	BookVO book = new BookVO();
	book.setNo(no);
	book.setTitle(title);
	book.setSubtitle(subtitle);
	book.setGenre(genre);
	book.setStartdate(sdate);
	book.setEnddate(ldate);
	book.setTime(time);
	book.setRuntime(Integer.parseInt(runtime));
	book.setPlace(place);
	book.setContact(contact);
	book.setSeat(Integer.parseInt(seat));
	book.setDiscount(discount);
	book.setContents(content);
	book.setImage(image);
	book.setLocal(local);
		
	dao.addperform(book);
	
	PriceVO price = new PriceVO();
	
	price.setAdult(Integer.parseInt(adult));
	price.setStudent(Integer.parseInt(student));
	price.setKid(Integer.parseInt(kid));
	price.setPerformNo(no);
	
	dao.addprice(price);
	
	response.sendRedirect("performlist.jsp");
	
%>