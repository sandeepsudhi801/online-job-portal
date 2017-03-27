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
<style>
#box{
height: 200px;
width: 200px;
background-color:inherit;
font-size: 20px;
font-variant: small-caps;

}
</style>
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
		<li><a href='Contact_us.jsp'>contact us</a></li>
		<li><a href='About_us.jsp'>about us</a></li>
		<li><a href='Terms.jsp'>terms</a></li>
		<li><a href='Privacy.jsp'>privacy policy</a></li>
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
		
		
		String id= (String)session.getAttribute("id");
		
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
		</div>
		</nav>
		<nav>
		
		<div class="container-fluid">
<div class="row">
<br>
<br>
<br>
<br>
</div>
<div class="row">
<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Part Time Jobs'><font  color="black"><h2>Part Time Jobs</h2></a>
</div>
</div>

</div>


<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=IT Jobs'><font color="black"><h2 >IT Jobs</h2></a>
</div>
</div>


</div>

<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Call Center/BPO Jobs'><font color="black"><h2 >Call Center/BPO Jobs</h2></a>
</div>
</div>


</div>

<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption"  >
<a href='userpage3.jsp?category=Electronics Jobs'><font color="black"><h2  >Electronics Jobs</h2></a>
</div>
</div>


</div>
</div>
<br>

<div class="row">
<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Internship'><font color="black"><h2>Internship</h2></a>
</div>
</div>

</div>


<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Sales Jobs'><font color="black"><h2 >Sales Jobs</h2></a>
</div>
</div>


</div>

<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Office Jobs'><font color="black"><h2 >Office Jobs</h2></a>
</div>
</div>


</div>

<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption"  >
<a href='userpage3.jsp?category=Networking Jobs'><font color="black"><h2  >Networking Jobs</h2></a>
</div>
</div>


<br>
</div>
</div>
<div class="row">
<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Medical and Health Care'><font color="black"><h2>Medical and Health Care</h2></a>
</div>
</div>

</div>


<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Education and Teaching'><font color="black"><h2 >Education and Teaching</h2></a>
</div>
</div>


</div>

<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption">
<a href='userpage3.jsp?category=Advertising and PR'><font color="black"><h2 >Advertising and PR</h2></a>
</div>
</div>


</div>

<div class="col-md-3"  >
<div class="thumbnail" id="box">
<div class="caption"  >
<a href='userpage3.jsp?category=Fresher Jobs'><font color="black"><h2  >Fresher Jobs</h2></a>
</div>
</div>
</div>

</div>

<br>



</div>
</nav>
		
	<%} %>	
</body>
</html>