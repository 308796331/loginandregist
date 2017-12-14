package denglu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import denglu.dao.userdao;
import denglu.pojo.book;

public class show extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		userdao ud = userdao.getInstance();
		
		String id = request.getParameter("id");
		int num=Integer.parseInt(id);
		ud.deleteById(num);
         		
		
		
		
		List<book> books = ud.selectAllBook();
		
		request.setAttribute("books", books);
		request.getRequestDispatcher("show.jsp").forward(request, response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
		
	}

}
