<%@page import="sun.security.util.Password"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%
		String Name = request.getParameter("userName");
		String Pwd = request.getParameter("passWord");
		if (null!=Name&&null!=Pwd&&"HuangMin".equals(Name) && "123456".equals(Pwd))
		{
			response.setHeader("refresh", "3;url=loginCorrect.jsp");
			session.setAttribute("userid",Name);
			
	%>
	<h1>登录成功，3秒后跳转到登录成功页面</h1>
		<h3>
			如果没有跳转成功请点击<a href="loginCorrect.jsp">这里</a>请手动跳转
		</h3>
	<%
		} else{
	%>
	<h1>登录失败请重新<a href="login.jsp">登录</a>用户名或密码错误</h1>
	<h1>3秒后将重新进入登录页面<% response.setHeader("refresh", "3;url=login.jsp"); %></h1>
	<%
		}
	%>
</body>
</html>