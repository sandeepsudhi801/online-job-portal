<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.container {
    width: 100%;
    border-bottom: 1px solid gray;
    border-bottom-style: dotted;
}





nav ul {
    list-style-type: none;
    
     float: left;
    max-width: 160px;
    margin: 0;
     color: black;
}
   


article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body background="image/background.png">
<script src="jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%response.addHeader("Cache-control", "no-cache,no-store,private,must-revalidate,max-state=0,post-check=0,pre-check=0");
		response.addHeader("pragma","no-cache");
		response.addDateHeader("Expires",0);
		String s=(String)session.getAttribute("id");
		
		if(s==null||s=="")
		{%>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" href="home_screen.jsp"><span class="glyphicon glyphicon-home"></span> Home</a>
		</div>
	</div>
</nav>
<%} 
		else
{
%>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
		<a class="navbar-brand" href="page2.jsp"><span class="glyphicon glyphicon-home"></span> Home</a>
		</div>
	</div>
</nav>
<%} %>
<div class="container">


  
 <h4 class="caption">Contact us</h4>
 

<article>
  <h1>Registered Office:</h1>
  <br>
  <p>One Click Consultancy</p>
  <p>XI/883, Rajiv Gandhi Road,</p>
  <p>Kakkanad, Cochin-37</p>
  <p>Kerala-India</p>
<p>Phone :- +91 9072675566 </p>
<p>Website :-www.javatraining@spectrum.net.in </p>


</article>



</div>

		
</body>
</html>