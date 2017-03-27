<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>One click consultancy</title>
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body background="image/background.png">
<script src="jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>
<%db.connect(); %>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" href="admin_page.jsp"><span class="glyphicon glyphicon-home"></span> Home</a>
		</div>
	</div>
</nav>\
<table class="table table-bordered"  >
	<caption> <h1> User Details </h1></caption>
	<tr>
	<th>id</th>
	<th>user name </th>
	<th>email </th>
	<th>applied job id</th>
	<th colspan="2">Action</th></tr>
	</tr>
<%


	ResultSet rs=db.exeQuery("select * from apply");
	
	while(rs.next())
	{
		String id=(rs.getString("id"));
		
		String unam=(rs.getString("name"));
		String uemail=(rs.getString("email"));
		String jid=(rs.getString("jid"));
		ResultSet rs1 =db.exeQuery("select * from jobs where id1="+jid+" ");
		while(rs1.next())
		{
			int cid=rs1.getInt("company_id");
			ResultSet rs2 =db.exeQuery("select * from company where id="+cid+" ");
			while(rs2.next())
			{
			String cemail=rs2.getString("email");
			
		
		
		%>
		<tbody>
		<tr>
		<td><h4><%out.print(id); %></h4></td>
		<td><h4><%out.print(unam); %></h4></td>
		<td><h4><%out.print(uemail); %></h4></td>	
		<td><h4><%out.print(jid); %></h4></td>
		
		<td><a href="userdelete.jsp?id=<%out.print(id); %>">delete</a></td>
		<td><a href="apply_email.jsp?email=<%out.print(cemail);%>&uid=<%out.print(id);%>">send email</a></td>
		</tr>
		</tbody>
		<%} 
		}
		}%>




</body>
</html>