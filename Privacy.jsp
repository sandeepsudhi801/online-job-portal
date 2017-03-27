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
		
		<h4 class="heading">Privacy Policy</h4>
<article>
<h4 class="caption">
Our Team:</h4>
<p>This privacy policy sets out how Quad Consultancy uses and protects any information that you give Quad Consultancy when you use this website.

One Click Consultancy is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.
One Click Consultancy may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from October 2014.</p>
<h4 class="caption">What we collect:</h4>
<p>We may collect the following information:</p>
<ul>
<li>
<p>Name and job title</p><li>
<p>Contact information including email address</p></li>
<li><p>Demographic information such as postcode, preferences and interests</p></li>
<li><p>Other information relevant to customer surveys and/or offers</p></li></ul>

<h4 class="caption">What we do with the information we gather</h4>
<p>We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>
<ul>
<li>
<p>Internal record keeping</p></li>
<li><p>We may use the information to improve our products and services</p></li>
<li><p>We may periodically send promotional emails about new products, special offers or other information which we 
think you may find interesting using the email address which you have provided</p></li>
<li><p>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail.
 We may use the information to customise the website according to your interests.</p></li></ul>

<h4 class="caption">Security:</h4>
<p>We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.
 
</p>


<h4 class="caption">How we use cookies</h4>
<p>A cookie is a small file which asks permission to be placed on your computer's hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.

We use traffic log cookies to identify which pages are being used. This helps us analyse data about webpage traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.

Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.

You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.
</p>

<h4 class="caption">Links to other websites</h4>
<p>Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.
</p>

<h4 class="caption">Controlling your personal information</h4>
<p>We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.

You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to us.

If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible. We will promptly correct any information found to be incorrect.
</p>


</article>
</body>
</html>