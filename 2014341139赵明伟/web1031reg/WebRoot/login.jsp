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
				width: 400px;
				height: 300px;
				background: black;
				background:rgba(129,154,112,0.5) ;
				border-radius: 10px;
			}
			body{
				color: blue;
				font: 20px "仿宋" ;
				font-weight: bolder;
				background:url(img/27.jpg)  content-box;
			}
			input{
				margin-top: 30px;
			}
			.inpp{
				height: 25px;
				width: 280px;
				border-radius: 10px;
			}
			.sex {
				width: 50px;
			}
			.inp{
				color: #FF0000;
				margin-left: 150px;
				font: 18px  "微软雅黑";
				width: 80px;
				height: 30px;
				background: #94C3DB;
			}
			span{
			font:8px ;
			color:blue;
			}
			a{
				text-decoration: none;
				color: cornsilk;
				font: 14px  "宋体";
				font-style:  italic;
			}
			#p{
			width:1000px;
			height:50px;
			vertical-align: middle;
			margin:auto;
			font:36px  "仿宋" ;
			color: white;
			text-align:center;
			background: darkslategrey;
			}
		</style>
	</head>
	<body>
	<span>${wcmsg }</span>
	<div id="p">古色图书系统</div>
		<div id="box">
			<form action="login" method="post">
				账号:<input class="inpp" type="text" name="userName"></br>
				密码:<input class="inpp" type="password" name="pwd"></br>
				性别:<input class="sex" type="radio" name=sex value="男">男<input class="sex" type="radio" name="sex" value="女">女</br>
				<a href="findPwd.jsp">${loginMsg }</a></br>
				<a href="reg.jsp">没有账号？立即注册！</a></br>
				<input type="submit" name="" class="inp" value="登录" />
			</form>
		</div>
	</body>
</html>
