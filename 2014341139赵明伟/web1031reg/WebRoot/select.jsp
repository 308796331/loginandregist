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
			font: 30px "新宋体";
			vertical-align: middle;
			color: forestgreen;
			margin: auto;
			border: 1px solid ;
			width: 1000px;
			height: 50px;
			background: burlywood;
		}
		#content{
			border: 1px solid;
			width: 1000px;
			margin: auto;
		}
		#foot{
			margin: auto;
			border: 1px solid;
			width: 1000px;
			background: burlywood;
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
		font:24px "仿宋" bold ;
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
	</style>
  </head>
  
  <body>
  	<div id="title">
  		欢迎来到古色图书管理系统
  	</div>
  	<p>图书搜索:</p>
  	<form action="select" method="post">
  	<input id="inp1" type="text" name="keyword" placeholder="请输入关键字">
  	<input id="inp2" type="submit" value="查询">
  	</form>
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
  		<a href="/web1031reg/select?id=${bk.id }">修改</a>
  		</td>
  		</tr>
  		</c:forEach>
  		
  		</table>
  		
  	</div>
  	
  	<div id="foot">
  		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我一生的嗜好，除了革命之外，就是读书。我一天不读书，就不能够生活。——————孙中山</p>
  	</div>
  	
  </body>
</html>
