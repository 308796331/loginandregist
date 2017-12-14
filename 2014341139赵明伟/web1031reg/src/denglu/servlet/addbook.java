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

public class addbook extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("id");
		int num=Integer.parseInt(id);
		userdao ud = userdao.getInstance();
		
		String bookname = request.getParameter("bookname");
		String p = request.getParameter("price");
		double price = Double.parseDouble(p);
		String author = request.getParameter("author");
		String typeid = request.getParameter("booktypeid");
		int booktypeid = Integer.parseInt(typeid);
		book b = new book(num,bookname,price,author,booktypeid);
//		带数据去添加
		ud.addBook(num,bookname,price,author,booktypeid);
		
//		再次展示
        List<book> books = ud.selectAllBook();
		
		request.setAttribute("books", books);
		request.getRequestDispatcher("show.jsp").forward(request, response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
