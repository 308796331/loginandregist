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
		.a{
		margin-left:155px;
		width:110px;
		height:30px;
		}
		.b{
		
		width:110px;
		height:30px;
		}
		.c{
		width:100px;
		height:30px;
		}
		
		.d{
		width:150px;
		height:30px;
		}
		.e{
		width:110px;
		height:30px;
		}
		
		#sub{
		text-align:center;
		width:100px;
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
  		<a href="/web1031reg/update?id=${bk.id }&bookName=${bk.bookName}&price=${bk.price}&author=${bk.author}&bookTypeId=${bk.bookTypeId}">修改</a>
  		</td>
  		</tr>
  		</c:forEach>
  		
  		</table>
  		
  	</div>
  	
  	<div id="foot">
  	<form action="update" method="post">
  		<input class="a" type="text" name="id" value=${book.id } readonly="readonly">
  		<input class="b" type="text" name="bookname" value=${book.bookName }>
  		<input class="c" type="text" name="price" value=${ book.price}>
  		<input class="d" type="text" name="author" value=${book.author }>
  		<input class="e" type="text" name="booktypeid" value=${ book.bookTypeId}>
  		<input id="sub" type="submit" value="确认修改">
  	</form>
  	</div>
  	
  </body>
</html>
