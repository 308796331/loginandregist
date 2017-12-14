package denglu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import denglu.dao.userdao;
import denglu.pojo.user;

public class findPwd extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("userName");
		
		String fp = request.getParameter("fpwd");
		
		String sp = request.getParameter("spwd");
		
		if(fp.equals(sp) && !fp.equals("") && !sp.equals("") && !name.equals("")){
			userdao ud = userdao.getInstance();
			user u = ud.findName(name);
			if(u==null){
				request.setAttribute("findmsg", "*该用户还未注册，请返回注册!");
				request.getRequestDispatcher("findPwd.jsp").forward(request, response);
			}else if(u!=null){
				int i = ud.updatePwd(name, sp);
				System.out.println(i);
				if(i==1){
					request.setAttribute("findmsg", "修改成功，请返回登录!");
					request.getRequestDispatcher("findPwd.jsp").forward(request, response);
				}else{
					request.setAttribute("findmsg", "失败，请重试!");
					request.getRequestDispatcher("findPwd.jsp").forward(request, response);
				}
			}
			
		}else if(name.equals("") || fp.equals("") || sp.equals("")){

			request.setAttribute("findmsg", "*请填写完整信息!");
			request.getRequestDispatcher("findPwd.jsp").forward(request, response);

		}else if(!name.equals("") && !fp.equals(sp)){
			request.setAttribute("findmsg", "*密码不一致请重新填写!");
			request.getRequestDispatcher("findPwd.jsp").forward(request, response);
		}
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
