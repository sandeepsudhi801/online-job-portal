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
		<a class="navbar-brand" href="page2.jsp"><span class="glyphicon glyphicon-home"></span> Home</a>
		</div>
	</div>
</nav>
<table class="table table-bordered"  >
	<caption> <h1> JOB Details </h1></caption>
	<tr>
	<th>no of vacancy</th>
	<th>company name</th>
	<th>location</th>
	<th>Experience required</th>
	<th>type</th>
	<th>job description</th>
	
	<th colspan="2">Action</th></tr>
	
	</tr>
<%String category = request.getParameter("category"); 
ResultSet rs=db.exeQuery("select * from jobs where category='"+category+"'"); 
while(rs.next())
{String jid=(rs.getString("id1"));
	String no=(rs.getString("no_of_vacancy"));
	String cid=(rs.getString("company_id"));
	String loc=(rs.getString("location"));
	String exp=(rs.getString("experience"));
	String sub=(rs.getString("sub_category"));
	String jd=(rs.getString("job_description"));
	
	ResultSet rs1=db.exeQuery("select * from company where id='"+cid+"'"); 
	while(rs1.next())
	{
		String cname=(rs1.getString("compname"));
	
	
%>
<tbody><tr>
		<td><h4><%out.print(no); %></h4></td>
		<td><h4><%out.print(cname); %></h4></td>
		<td><h4><%out.print(loc); %></h4></td>
		<td><h4><%out.print(exp); %></h4></td>
		<td><h4><%out.print(sub); %></h4></td>
		<td><h4><%out.print(jd); %></h4></td>
		
		
		<td><a href="apply.jsp?id=<%out.print(jid);%>">apply</a></td>
		
		</tr>
		</tbody>
		<%} }%>

</body>
</html>