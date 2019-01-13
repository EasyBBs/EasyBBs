<%-- 
    Document   : mainForm
    Created on : 2019-1-12, 13:20:46
    Author     : 19310_000
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>主页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
         <link rel="stylesheet" type="text/css" href="styles.css">
        -->
<style>
a {
	text-decoration: none;
	color:white;
}
div{
float:left;
width:30.3%;
padding-left:10px;
}
</style>
<a>
</head>
<body background="image/6.jpg">
	<%
		java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		java.util.Date currentTime = new java.util.Date();
		String time = simpleDateFormat.format(currentTime).toString();
	%>
	<br />
	<center>
		<h1>
			欢迎登录<br /> <br />苏婷和连雯怡的情侣空间
		</h1>
	</center>
	<center>
		<table width="1000" height="5" border="5" cellspacing="5"
			cellpadding="5">
			<tr>
				<td>用户：<%=session.getAttribute("username")%> 登录地址：<%=session.getAttribute("userIP")%>
					登录时间：<%
					out.println(time);
				%></td>
			</tr>
		</table>
		<table width="1000" height="400" border="5" cellspacing="5"
			cellpadding="5">
			<tr>
				<td>
				<div><a href="dissess.jsp"><img src="image/mao11.jpg"  height="300"/></a><br><br><a href="dissess.jsp"> <font size="5">浏览帖子</font></a></div>
				<div style="margin-left:32px"><a href="newtitle.jsp"> <img src="image/mao22.jpg" height="300" /></a><br><br><a href="newtitle.jsp"> <font size="5">发表帖子</font></a> </div>
				<div style="float:right"><a href="person.jsp"> <img src="image/mao33.jpg"  height="300" /></a> <br> <br><a href="person.jsp"> <font size="5">个人资料</font></a></div>	
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
