<%-- 
    Document   : errorpage2
    Created on : 2019-1-12, 13:40:06
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
        . </head>
    <body background="image/backgroud1.jpg">
        <br><br>
        <center><h2>发表失败！</h2>
            <!-- 保留原页面信息的脚本回退方式 -->
            <h3> <a href="javascript:history.back()">返回</a>
            </h3>
        </center>
    </body>
</html>
