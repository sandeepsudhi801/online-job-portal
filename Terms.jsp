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
    
}</style>
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
		<h4 class="heading">Terms</h4>
<article>
<h4 class="caption">

Terms And Conditions</h4>
<ul>
<li>
<p>Registration with career solutions is necessary for all the candidates before any consideration.</p></li>
<li><p>career solutions do not guarantee of arranging interview/providing a job within a specified period. Short-listing & calling a candidate for interview is solely ot the discretion of career solutions.</p></li>
<li><p>If any candidate is selected by our references and recommendations, he/she has to inform and endorse a copy of the appointment letter immediately to us for our record.</p></li>
<li><p>in case of selection of the candidates, Our Recruitment Service Charges shall be : </p>
<ul><li><p>Case I- Candidate need not to pay any amount as our service charges in case of the company where he is placed is agreed with our terms of business & will pay our service charges.</p></li>
<li><p>Case II- The candidate will pay 50% of the gross first month salary as our service charges in case of the Company where he is placed is not agreed with our terms of business & not paying our service charges.</p></li>
</ul>
</li>
<li><p>The candidate will be liable to release our service charges within 7 days of the joining date either in cash or cheque.</p></li>
<li><p>if career solutions arranges any interview, then selected candidate will be liable to pay the said service charges if he/she joins the same job within three month.</p></li>
<li><p>If a candidate is selected for a job through career solutions he/she will be solely the employee of the concerning organization and career solutions will be not responsible for any legal/dispute or any other matter between the candidate and the organization.</p></li>
<li><p>The Registration is valid up to one year only from the date of Registration.</p></li>
<li><p>Candidate will not be considered for any vacancy in future : </p>
<ul><li><p>If the candidate does not attended the interviews, arranged by career solutions twice</p></li>
<li><p>If the candidate discloses the name of the vacancy/company name to anybody else for which he/she has been sent through career solutions.</p></li></ul></li>
</ul>

</article>
</body>
</html>