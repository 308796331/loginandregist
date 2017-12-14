<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		 <base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			#box{
				margin: auto;
				border: 1px solid ;
				width: 500px;
				height: 300px;
				background:rgba(179,200,191,0.5) ;
			}
			body{
				color: darkred;
				font: 20px "仿宋" ;
				font-weight: bolder;
				background:url(img/23.jpg)  content-box;
			}
			input{
				margin-top: 30px;
			}
			.inpp{
				height: 25px;
				width: 280px;
			}
			.sex {
				width: 50px;
			}
			.inp{
				color: #B3C8BF;
				margin-left: 200px;
				margin-top: 40px;
				font: 18px  "微软雅黑";
				width: 90px;
				height: 35px;
				background:  indianred;
			}
			span{
			margin-top:10px;
			font:8px;
			color:white;
		
			}
		
			a{
				text-decoration: none;
				color: #863591;
				font: 16px  "宋体";
				font-style:  italic;
			}
			
		</style>
	</head>
	<body>
	<a href="login.jsp">返回登录</a>
	<a href="reg.jsp">返回注册</a>
	
	
		<div id="box">
			<form action="findPwd" method="post">
				请输入账号&nbsp;&nbsp;&nbsp;&nbsp;:<input class="inpp" type="text" name="userName"></br>
				请输入新密码&nbsp;&nbsp;:<input class="inpp" type="password" name="fpwd"></br>
				请再次确认密码:<input class="inpp" type="password" name="spwd"></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${findmsg }</span></br>
				<input type="submit" class="inp" value="确认找回"/>
			</form>
		</div>
	</body>
</html>
