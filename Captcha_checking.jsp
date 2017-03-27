<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<img alt="200" src="http://localhost:8080/Mini_Project/Captcha.jsp">
<br>
<form action="#">
<span>enter the letters shown</span><input type="text" name="captcha">
<input type="submit"name="sub">
<%
if(request.getParameter("sub")!=null)
{
	
String a =request.getParameter("captcha") ;
out.print(a);
out.print(" ");
response.addHeader("Cache-control", "no-cache,no-store,private,must-revalidate,max-state=0,post-check=0,pre-check=0");
response.addHeader("pragma","no-cache");
response.addDateHeader("Expires",0);
String s=(String)session.getAttribute("key");

out.print(s);
}
%>
</form>
</body>
</html>