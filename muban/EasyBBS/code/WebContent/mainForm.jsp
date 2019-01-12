<%-- 
    Document   : mainForm
    Created on : 2019-1-12, 13:20:46
    Author     : 19310_000
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <title>My JSP 'errorpage.jsp' starting page</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
         <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    </head>
    <body background="image/backgroud1.jpg">
        <%
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
         java.util.Date currentTime = new java.util.Date();
         String time = simpleDateFormat.format(currentTime).toString();
        %>
        <br />
        <center>
            <h1>欢迎登陆<br /><br />吃鸡退休老干部疗养论坛</h1></center>
        <center>
            <table width="1000" height="5" border="5" cellspacing="5" cellpadding="5">
                <tr>
                    <td>
                        用户：<%=session.getAttribute("username") %>
                        登录地址：<%=session.getAttribute("userIP") %>
                        登录时间：<% out.println(time); %></td>
                </tr>
            </table>
            <table width="1000" height="400" border="5" cellspacing="5" cellpadding="5">
                <tr>
                    <td>
                        <a href="dissess.jsp"><img src="image/1.png" width="230" height="230" /
                                                   ></a>
                        <a href="newtitle.jsp">
                            <img src="image/2.png" width="230" height="230" /></a>
                        <a href="person.jsp">
                            <img src="image/3.png" width="230" height="230" /></a>
                        <br><br>
                        <a href="dissess.jsp"> <font size="5">浏览帖子</font></a>
                        <a href="newtitle.jsp"> <font size="5">发表帖子</font></a>
                        <a href="person.jsp"> <font size="5">个人资料</font></a>
                    </td>
                </tr>
            </table>
        </center>
    </body>
</html> 
