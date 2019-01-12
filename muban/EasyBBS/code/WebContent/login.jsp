<%-- 
    Document   : Login
    Created on : 2019-1-11, 22:07:10
    Author     : 19310_000
    用户登录界面
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

 <title>My JSP 'index.jsp' starting page</title>
 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
 <meta http-equiv="expires" content="0">
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 <meta http-equiv="description" content="This is my page">

 </head>

 <body background="image/4.jpg" >
     
 <br><br><br><br>
 <center>
 <div style="background-color:#dceffe;box-shadow: 10px 10px 5px #888888;width: 400px;opacity: 0.6" align="center">
 <h1 style="font-family:楷体"> 欢迎访问</h1>
 <h1>lwy和st的论坛空间
<br> </h1>

 <br>

 <form method="post" action="logincheck.jsp" id="myform" >
 <strong>用户名：
</strong><input type="text" name="username" size="25" maxlength="16">
 <br><br>
 <strong>密 码：
</strong><input type="password" name="password" size="25" maxlength="16">
 <br><br>
 <a href="Regist.jsp"><input type="button" value="注册"></a>
 <input type="button" value="登录" onclick="check()">
 <br><br>
基于 Jsp 的简单论坛（BBS）的设计与实现


 <a href="getPassword.jsp">忘记密码？</a>
 </form>
 </div>
 </center>

 <script type="text/javascript">
 // 检查表单元素的值是否为空
 function check(){
 var myform = document.getElementById("myform");
 for(var i=0; i<myform.length; i++ ){
 if(myform.elements[i].value == ""){
 alert(myform.elements[i].title + "用户名或密码不能为空");
 myform.elements[i].focus();
 return;
 }
 }
 myform.submit(); // 表单中最后 input 提交标签用的是 button 类型，首先不提交表单，在 js 判断表单项都不为空时 再提交表单。
 }
 </script>
 </body>
 </html>
