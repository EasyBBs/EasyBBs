<%-- 
    Document   : revertsuccess
    Created on : 2019-1-12, 13:40:50
    Author     : 19310_000
--%>

<%@page import="java.io.PrintWriter"%>
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
 <title>回帖成功</title>
 <meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 <meta http-equiv="description" content="This is my page">
 <!--
 <link rel="stylesheet" type="text/css" href="styles.css">
 -->
 </head>
    <body background="image/6.jpg">
 <br><br>
<center> <h2>恭喜您，回复成功！</h2>
 <br><br>
 <br><br>
<h3><a href=detail.jsp?id=<%=session.getAttribute("reply")%>>返回
</a></h3>
</center>
 </body>
 </html>


