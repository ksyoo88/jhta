package book;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibatis.sqlmap.client.SqlMapClient;

import comm.IbatisUtil;

@WebServlet("/book/performform")
public class PerformanceServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getMethod();
		System.out.println(method);
		if("POST".equalsIgnoreCase(method)) {
			Performance p = new Performance();
			String title = request.getParameter("title");//...
			p.setTitle(title);
			
			SqlMapClient sqlmap = IbatisUtil.getSqlmap();
			try {
				sqlmap.insert("addNewPerformance", p);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			response.sendRedirect("/index.html");
		} else if("GET".equalsIgnoreCase(method)) {
			// 절대경로로 하는게 쉬울듯
			// 상대경로로 하려면 WebServlet의 앞 경로 자동으로 붙네...
			request.getRequestDispatcher("/WEB-INF/book/performform.jsp").forward(request, response);
		}
	}
}
