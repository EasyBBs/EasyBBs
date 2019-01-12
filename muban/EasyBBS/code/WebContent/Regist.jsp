<%-- 
    Document   : Regist
    Created on : 2019-1-12, 10:12:03
    Author     : 19310_000
    用户注册界面
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<<<<<<< HEAD
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
<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body background="image/backgroud.jpg">
	<br>
	<center>
		<h1>
			吃鸡退休老干部疗养论坛<br> Eat chicken retired veteran cadre convalescence
			BBS
		</h1>
		<h1>注 册 账 号</h1>
		<h2>请填写以下资料</h2>
		<form id="myform" method="post"
			action="<%=request.getContextPath()%>/addUser">
			<strong>用户名： </strong><input type="text" name="username" size="25"
				maxlength="16"> <br>
			<br> <strong>密 码： </strong><input type="password"
				name="password" size="25" maxlength="16"> <br>
			<br> <strong>性 别：</strong><input type="text" name="sex"
				size="25"> <br>
			<br> <strong>年 龄：</strong><input type="text" name="age"
				size="25"> <br>
			<br> <strong>电 话： </strong><input type="text" name="telephone"
				size="25"> <br>
			<br> <strong>邮 箱： </strong><input type="text" name="email"
				size="25" maxlength="100"> <br>
			<br> <input type="reset" value="重 置"> <input
				type="button" value="注 册" onclick="check()"><br> <a
				href=login.jsp>返回前一页 </a>
		</form>
	</center>
	<script type="text/javascript">
		// 检查表单元素的值是否为空
		function check() {
			var myform = document.getElementById("myform");
			for ( var i = 0; i < myform.length; i++) {
				if (myform.elements[i].value == "") {
					alert(myform.elements[i].title + "注册信息未填写完整");
					myform.elements[i].focus();
					return;
				}
			}
			myform.submit(); // 表单中最后 input 提交标签用的是 button 类型，首先不提交表单，在 js 判断表单项都不为空时 再提交表单。
		}
	</script>
</body>
</html>
=======
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
 <body background="image/backgroud.jpg">
 <br>
<center><h1>吃鸡退休老干部疗养论坛<br>
Eat chicken retired veteran cadre convalescence BBS</h1>
<h1>注 册 账 号</h1>
 <h2>请填写以下资料</h2>
 <form id="myform" method="post" action="addUser">
 <strong>用户名：
</strong><input type="text" name="username" size="25" maxlength="16">
<br><br>
 <strong>密 码：
</strong><input type="password" name="password" size="25" maxlength="16">
 <br><br>
 <strong>性 别：</strong><input type ="text" name="sex" size ="25" >
 <br><br>
 <strong>年 龄：</strong><input type ="text" name="age" size ="25" >
 <br><br>
 <strong>电 话：
</strong><input type ="text" name="telephone" size ="25" >
<br><br>
 <strong>邮 箱：
</strong><input type="text" name="email" size="25" maxlength="100">
 <br><br>
 <input type="reset" value="重 置" >
 <input type="button" value="注 册" onclick="check()"><br>
 <a href =login.jsp >返回前一页 </a>
 </form>
 </center>
<script type="text/javascript">
 // 检查表单元素的值是否为空
 function check(){
 var myform = document.getElementById("myform");
 for(var i=0; i<myform.length; i++ ){
 if(myform.elements[i].value == ""){
 alert(myform.elements[i].title + "注册信息未填写完整");
 myform.elements[i].focus();
 return;
 }
 }
 myform.submit(); // 表单中最后 input 提交标签用的是 button 类型，首先不提交表单，在 js 判断表单项都不为空时 再提交表单。
 }
 </script>
 </body>
 </html> 
>>>>>>> 2e639a96d1c9b46ecf37b643c3e92973ef8430f9
