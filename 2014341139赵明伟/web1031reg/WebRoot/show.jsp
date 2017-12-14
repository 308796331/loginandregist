<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		 <base href="<%=basePath%>">
		<title></title>
<style type="text/css">
		body{
			background:url(img/1.jpg)  content-box;
		}
		#title{
			
			text-align: center ;
			
		}
		#content{
			border: 1px solid;
			width: 1000px;
			margin: auto;
		}
		#foot{
		
		   
		    text-align: center ;
			margin: auto;
			border: 1px solid;
			width: 1000px;
			background: #F0F0F0;
		}
		tr{
		text-align:center;
		}
		a{
		text-decoration:none;
		}
		p{
		display:block;
		color:darkslategrey;
		font:28px "仿宋" ;
		}
		#inp1{
		width:200px;
		height:30px;
		font:18px;
		color:gray;
		display:inner-block;
		}
		#inp2{
		width:60px;
		height:30px;
		background: darkgreen;
		color:white;
		font:16px "新宋体";
		}
		.p{
		    font: 30px "新宋体" bold;
			vertical-align: middle;
			color: black;
			margin: auto;
			border: 1px solid ;
			width: 1000px;
			height: 50px;
			background: burlywood;
		}
	</style>
  </head>
  
  <body>
  	<div id="title">
  		<p class="p">欢迎来到古色图书管理系统</p>
  	</div>
  	<p>图书搜索:</p>
  	<form action="select" method="post">
  	<input id="inp1" type="text" name="keyword" placeholder="请输入关键字">
  	<input id="inp2" type="submit" value="查询">
  	</form>
  	<p><a href="addbook.jsp">添加图书</a></p>
  	<div id="content">
  		
  		<table border="1" align="center" cellspacing="0" cellpadding="10" width="70%"> 
  		<tr>
  		<th>图书编号</th>
  		<th>图书名</th>
  		<th>图书价格</th>
  		<th>图书作者</th>
  		<th>图书种类编号</th>
  		<th>操作</th>
  		</tr>
  		
  		
  		<c:forEach items="${books }" var="bk">
  		<tr>
  		<td>${bk.id }</td>
  		<td>${bk.bookName }</td>
  		<td>${bk.price }</td>
  		<td>${bk.author }</td>
  		<td>${bk.bookTypeId }</td>
  		<td>
  		<a href="/web1031reg/show?id=${bk.id }">删除</a>
  		<a href="/web1031reg/select?id=${bk.id }&bookName=${bk.bookName}&price=${bk.price}&author=${bk.author}&bookTypeId=${bk.bookTypeId}">修改</a>
  		</td>
  		</tr>
  		</c:forEach>
  		
  		</table>
  		
  	</div>
  	
  	<div id="foot">
  		<p class="p">书山有路勤为径，学海无涯苦作舟！</p>
  	</div>
  	
  </body>
</html>
