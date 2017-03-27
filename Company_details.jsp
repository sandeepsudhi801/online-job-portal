<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company details</title>
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
</nav>
<div class="container-fluid">
<form action="#">
<br>
<br>

<div class="form-group">
<span  class="control-label col-sm-2">Company name:  </span><input type="text" name="cname">
<br>
</div>
<div class="form-group">
<span  class="control-label col-sm-2">Company address:</span><input type="text" name="caddr">
</div>

<div class="form-group">
<span  class="control-label col-sm-2">Company Contact:</span><input  type="text" name="ccontact">
</div>

<div class="form-group">
<span  class="control-label col-sm-2">Company email: </span><input type="email" name="cemail">
</div>
<div class="form-group">
<input type="submit" value="confirm" name="conf">
</div>

</form>
</div>

<%
if(request.getParameter("conf")!=null)
{
	String n=request.getParameter("cname");
	String a=request.getParameter("caddr");
	String c=request.getParameter("ccontact");
	String e=request.getParameter("cemail");
	
	db.UpdatQuery("insert into company(compname,addr,contact,email)values('"+n+"','"+a+"','"+c+"','"+e+"')");

}%>
<form>
<br>
<div class="form-group">
<span class="control-label col-sm-2"><input type="submit" value="get details" name="details"></span>
</div>
</form>
	<%
	if(request.getParameter("details")!=null)
{%>
<table class="table table-bordered"  >
	<caption> <h1>Details </h1></caption>
	<tr>
	<th>id</th>
	<th>company name </th>
	<th>company address </th>
	<th>company contact </th>
	<th>company email </th>
	<th colspan="2">Action</th></tr>
	
	</tr>
		
		<%
	ResultSet rs=db.exeQuery("select * from company");
	
	while(rs.next())
	{
		String id=(rs.getString("id"));
		
		String cnam=(rs.getString("compname"));
		String caddr=(rs.getString("addr"));
		String contact=(rs.getString("contact"));
		String email=(rs.getString("email"));
		
		%>
		
		
		<tbody><tr>
		<td><h4><%out.print(id); %></h4></td>
		<td><h4><%out.print(cnam); %></h4></td>
		<td><h4><%out.print(caddr); %></h4></td>
		<td><h4><%out.print(contact); %></h4></td>
		<td><h4><%out.print(email); %></h4></td>
		<td><a href="edit.jsp?id=<%out.print(id); %>">edit</a></td>
		<td><a href="delete.jsp?id=<%out.print(id); %>">delete</a></td>
		</tr>
		</tbody>
		<%
	}
}

%>

</table>
</body>
</html>


