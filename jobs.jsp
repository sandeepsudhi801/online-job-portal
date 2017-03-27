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
</nav>
<div class="container-fluid">
<form action="#">
<br>
<br>

<div class="form-group">
<span  class="control-label col-sm-2">Category:  </span>
<select  name="category"  required="required">
<option>Part Time Jobs</option>
<option>IT Jobs</option>
<option>Call Center/BPO Jobs</option>
<option>Electronics Jobs</option>
<option>Internship</option>
<option>Sales Jobs</option>
<option>Office Jobs</option>
<option>Networking Jobs</option>

<option>Medical and Health Care</option>
<option>Education and Teaching</option>
<option>Advertising and PR</option>
<option>Fresher Jobs</option>
</select>



<br>
</div>
<div class="form-group">
<span  class="control-label col-sm-2">No of vaccancy:</span><input type="text" name="vacc">
</div>

<div class="form-group">

<span  class="control-label col-sm-2">Company id:</span>
<select  name="cid"  required="required">
<%ResultSet rs=db.exeQuery("select * from company"); 
while(rs.next())
{
	String id=(rs.getString("id"));
	%>
	<option><%out.print(id); %></option>
<%} %>


</select>

</div>




<div class="form-group">
<span  class="control-label col-sm-2">Location: </span><input type="text" name="loc">
</div>

<div class="form-group">
<span  class="control-label col-sm-2">Experience: </span><input type="text" name="exp">
</div>

<div class="form-group">
<span  class="control-label col-sm-2">Sub Category: </span>
<select  name="sub"  required="required">
<option>part time</option>
<option>full time</option>
</select>
</div>
<div class="form-group">
<span  class="control-label col-sm-2">Job Description: </span><input type="text" name="jdesc">
</div>


<div class="form-group">
<input type="submit" value="confirm" name="conf">
</div>
</form>
<%
if(request.getParameter("conf")!=null)
{
	String c = request.getParameter("category");
	String v = request.getParameter("vacc");
	String id = request.getParameter("cid");
	String l = request.getParameter("loc");
	String e = request.getParameter("exp");
	String s = request.getParameter("sub");
	String j = request.getParameter("jdesc");
	int cid=Integer.parseInt(id);
	db.UpdatQuery("insert into jobs(category,no_of_vacancy,company_id,location,experience,sub_category,job_description)values('"+c+"','"+v+"','"+cid+"','"+l+"','"+e+"','"+s+"','"+j+"')");

}%>
<form>
<div class="form-group">
<input type="submit" value="get details" name="details">
</div>

</form>

<%
	if(request.getParameter("details")!=null)
{%>
<table class="table table-bordered"  >
	<caption> <h1> JOB Details </h1></caption>
	<tr>
	<th>id1</th>
	<th>category</th>
	<th>no of vaccancy</th>
	<th>company id </th>
	<th>location</th>
	<th>experience</th>
	<th>sub catogery</th>
	<th>job description</th>
	<th colspan="2">Action</th></tr>
	
	</tr>
	<%
	ResultSet rs1=db.exeQuery("select * from jobs");
	
	while(rs1.next())
	{
		String id1=(rs1.getString("id1"));
		
		String c=(rs1.getString("category"));
		String v=(rs1.getString("no_of_vacancy"));
		String cid=(rs1.getString("company_id"));
		String lo=(rs1.getString("location"));
		String ex=(rs1.getString("experience"));
		String su=(rs1.getString("sub_category"));
		String jd=(rs1.getString("job_description"));
		
		
		%>
		<tbody><tr>
		<td><h4><%out.print(id1); %></h4></td>
		<td><h4><%out.print(c); %></h4></td>
		<td><h4><%out.print(v); %></h4></td>
		<td><h4><%out.print(cid); %></h4></td>
		<td><h4><%out.print(lo); %></h4></td>
		<td><h4><%out.print(ex); %></h4></td>
		<td><h4><%out.print(su); %></h4></td>
		<td><h4><%out.print(jd); %></h4></td>
		
		
		<td><a href="jobedit.jsp?id=<%out.print(id1); %>">edit</a></td>
		<td><a href="jobdelet.jsp?id=<%out.print(id1); %>">delete</a></td>
		</tr>
		</tbody>
		<%}
	}%>
</div>

</body>
</html>