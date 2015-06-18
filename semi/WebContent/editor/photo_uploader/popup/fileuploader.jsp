<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%
	int size = 10 * 1024 * 1024;
	// String path = request.getSession().getServletContext().getRealPath("/upload/editor_upload/");
	// String path = request.getSession().getServletContext().getRealPath("/workspace-egov/.metadata/.plugins/org.eclipse.wst.server.core/tmp5/wtpwebapps/culture_meta_manager/upload/editor_upload/");
	String path = request.getSession().getServletContext().getRealPath("/upload/editor_upload/");
	//String path = request.getSession().getServletContext().getRealPath("/upload/editor_upload/");
	String fileName = "";
	String url = "/editor/photo_uploader/popup/callback.html?";

	MultipartRequest multi = null;

	try {
		multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());

		Enumeration files = multi.getFileNames();
		String file = (String) files.nextElement();
		java.io.File f = multi.getFile(file);
		java.io.File newFile = new java.io.File(f.getParent(), System.currentTimeMillis() + "." + multi.getOriginalFileName(file).split("\\.")[1]);
		f.renameTo(newFile);
		fileName = newFile.getName();

	} catch (Exception e) {
		e.printStackTrace();
	}

	if (fileName.length() > 0) {
		url = url.concat("callback_func=")
				.concat(multi.getParameter("callback_func"))
				.concat("&bNewLine=true&sFileName=").concat(fileName)
				.concat("&sFileURL=http://192.168.0.13/upload/editor_upload/").concat(fileName);
	} else {
		url = url.concat("&errstr=error");
	}
%><script type="text/javascript">
	location.href = '<%=url %>';
</script>