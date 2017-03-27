<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.addHeader("Cache-control", "no-cache,no-store,private,must-revalidate,max-state=0,post-check=0,pre-check=0");
response.addHeader("pragma","no-cache");
response.addDateHeader("Expires",0);
String s=(String)session.getAttribute("id");
if(s==null||s=="")
{
	JOptionPane.showMessageDialog(null,"Session expired login again!!");
	response.sendRedirect("home_screen.jsp");
	
}
else
{
	session.invalidate();
	response.sendRedirect("home_screen.jsp");
}

%>

</body>
</html>