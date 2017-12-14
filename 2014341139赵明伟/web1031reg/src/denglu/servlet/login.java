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

public class login extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		request.getParameter("sex");
		
		userdao ud = userdao.getInstance();
		boolean res = ud.loginByNameAndPwd(name,pwd);
		if(!name.equals("") && !pwd.equals("")){
		if(res){
			userdao dao = userdao.getInstance();
			List<book> books = dao.selectAllBook();
			
			request.setAttribute("books", books);
			request.getRequestDispatcher("show.jsp").forward(request, response);
		}else{
			request.setAttribute("loginMsg", "忘记密码？立即找回！");
            request.getRequestDispatcher("/login.jsp").forward(request, response);			
			
		}
	}else{
		request.setAttribute("loginMsg", "请输入账号或密码！");
        request.getRequestDispatcher("/login.jsp").forward(request, response);	
	}
}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
