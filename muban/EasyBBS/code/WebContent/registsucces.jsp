<%-- 
    Document   : registsucces
    Created on : 2019-1-12, 10:16:23
    Author     : 19310_000
    用户注册成功界面提示
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
基于 Jsp 的简单论坛（BBS）的设计与实现
18
 <title>My JSP 'index.jsp' starting page</title>
 <meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
 <meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 <meta http-equiv="description" content="This is my page">
 <!--
<link rel="stylesheet" type="text/css" href="styles.css">
 -->
 </head>
 <body background="image/backgroud.jpg">
<br><br>
 <center> <h2>恭喜您，注册成功！</h2>
 <br><br>
<table border="1">
<tr>
 <th><font size="3">用户名：</font></th>
<th><font size="3"><%=session.getAttribute("username")%></font><
/th>
</tr>
 <tr>
<th><font size="3">密 码：</font></th>
 <th><font size="3"><%=session.getAttribute("password") %></font>
</th>
 </tr>
 </table>
<br><br>
 <h3><a href="login.jsp">现在去登录</a></h3>
 </center>
 </body>
</html> 
