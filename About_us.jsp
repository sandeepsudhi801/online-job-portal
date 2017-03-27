<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">
<style>

.heading
{
border-bottom-width:thin;
border-top-width:thin;
border-top-style: dotted;
border-bottom-style: dotted;
}
article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    
}
</style>
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

<h4 class="heading">About Us</h4>
<article>
<h4 class="caption">
Our Team:</h4>
<p>One Click comprises of a team of young and versatile personalities with good amount of professional 
experience in their respective domain.Our strength lies in our team's ability to deliver with
perfection and on time. Our focus is consulting services in the area of Human Resources. We can
deliver our services to clients from across industries include both Indian companies and
multinationals in various stages of evolution, from start-ups to large established institutions. 
We have fully fledged offices in Delhi, Mumbai, Bangalore and Chennai which provides a better reach to give that extra edge in service to our clients.</p>
<h4 class="caption">Leadership:</h4>
<p>Mr. Francis Immatty a post graduate in HR and marketing with 20 years of experience; worked across various industries (FMCG, FMCD, Finance & NBFC)in a responsible position with exposure to 
south as well as in north India. We do have a core team of professionals with engineering and finance background which will help our selection with perfection.
At Leeway each team member has a dedicated workstation with high-speed internet access and individual internet identity. All our offices are in close proximity of the local business district and easily accessible to candidates and clients alike.
 
</p>
<h4 class="caption">Our team at a glance</h4>
<ul>
<li>
<p>Over 10 Recruitment Specialists and Key Account Managers with a mix of Engineering and Business Management backgrounds. </p></li>
<li><p>Recruitment Specialists includes production and engineering vertical</p></li>
<li><p>Dedicated support staff. </p></li>
<li><p>Fully fledged Wi-Fi office with fail proof backup </p></li></ul>


</article>
</body>
</html>