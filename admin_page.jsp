<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>One click consultancy</title>
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body background="image/background.png">
<jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>
<%db.connect(); %>
<script src="jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span> One Click Consultancy</a>
		</div>
		<ul class="nav navbar-nav navbar-left">
		<li><a href='Company_details.jsp'>company details</a></li>
		<li><a href='user_details.jsp'>users details</a></li>
		<li><a href='jobs.jsp'>jobs</a></li>
		
		</ul>
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
		HttpSession sess= request.getSession();
		
		String id=(String)sess.getAttribute("id");
		System.out.println(id);
		int id1=Integer.parseInt(id);
		ResultSet rs=db.exeQuery("select * from users where id="+id1+"");
		String n=null;
		while(rs.next())
		{
			 n=(rs.getString("name"));
				}%>
		<ul class="nav navbar-nav navbar-right">
		<li><a href="session_invalidate.jsp"><%=n  %> <span class="glyphicon glyphicon-log-out"></span>log out</a></li>
		
		</ul>
		<%} %>
</body>
</html>