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

public class select extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		userdao ud = userdao.getInstance();
		String id = request.getParameter("id");
		int num=Integer.parseInt(id);
		
//      修改操作   		
		
//		String bookname = request.getParameter("bookName");
//		String p = request.getParameter("price");
//		double price = Double.parseDouble(p);
//		String author = request.getParameter("author");
//		String typeid = request.getParameter("bookTypeId");
//		int booktypeid = Integer.parseInt(typeid);
//		带数据去修改界面
//		book k = new book(num,bookname,price,author,booktypeid);
		book k = ud.findbookById(num);
		
		
		request.setAttribute("book", k);
		request.getRequestDispatcher("update.jsp").forward(request, response);		
		
		
//		List<book> books = ud.selectAllBook();
//		
//		request.setAttribute("books", books);
//		request.getRequestDispatcher("show.jsp").forward(request, response);
//		System.out.println(books);
//		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String str = request.getParameter("keyword");
		
		userdao ud = userdao.getInstance();
		
		
		
		List<book> books = ud.selectBook(str);
		
		request.setAttribute("books", books);
		request.getRequestDispatcher("select.jsp").forward(request, response);
		
		
//		doGet(request,response);
	}

}
