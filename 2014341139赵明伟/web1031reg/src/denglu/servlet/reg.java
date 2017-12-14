package denglu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import denglu.dao.userdao;
import denglu.pojo.user;

public class reg extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String name = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		String sex = request.getParameter("sex");
		user u = new user(name, pwd, sex);
		
		userdao ins = userdao.getInstance();
		user fin = ins.findName(name);
		if(fin==null && !name.equals("") && !pwd.equals("")){
			ins.adduser(u);
			request.setAttribute("wcmsg", "注册成功，请登录！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else if(fin==null && (name.equals("") || pwd.equals(""))){
			request.setAttribute("failmsg", "*用户名或密码不能为空，请重新注册！");
			request.getRequestDispatcher("reg.jsp").forward(request, response);
			
		}else{
			request.setAttribute("failmsg", "*该用户已经存在，请重新注册！");
			request.getRequestDispatcher("reg.jsp").forward(request, response);
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
		
	}

}
