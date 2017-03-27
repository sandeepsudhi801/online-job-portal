<%@page import="Decoder.BASE64Encoder"%>
<%@page import="dbBeanss.Email"%>
<%@page import="java.util.UUID"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">







<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">

<title>One click consultancy</title>
</head>
<body>
<jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>
<%db.connect(); %>
<script type="text/javascript" src="sign_up.js"></script>
<div class="container-fluid">

<form  onsubmit="return(chk())" action="#">

<div class="form-group">
<label class="control-label col-sm-1" for="name">Name:</label>
<div class="col-sm-11">
</div>
<input type="text" class="form-control" id="name" name="name1" placeholder="enter name">

</div>


<div class="form-group">
<label class="control-label col-sm-1" for="email">Email:</label>
<div class="col-sm-11">
</div>
<input type="email" class="form-control" id="email" name="email1" placeholder="enter email">

</div>

<div class="form-group">
<label class="control-label col-sm-1" for="pwd">Password:</label>
<div class="col-sm-11">
</div>
<input type="password" class="form-control" id="password" name="password11" placeholder="enter password">

</div>

<div class="form-group">
<label class="control-label col-sm-1" for="pwd"> confirm Password:</label>
<div class="col-sm-11">
</div>
<input type="password" class="form-control" id="password1" placeholder="enter password">

</div>


<div class="col-sm-11">
<input type="submit" name="sub" class="btn btn-default">
</div>
   
</form>
</div>
<%
if(request.getParameter("sub")!=null)
{
String name=request.getParameter("name1");
String email=request.getParameter("email1");
String password=request.getParameter("password11");
UUID ui=UUID.randomUUID();
String salt=ui.toString();
String pwd=salt+password;
String hashpwd = new BASE64Encoder().encode(pwd.getBytes());



db.UpdatQuery("insert into users (salt,name,email,password) values('"+salt+"','"+name+"','"+email+"','"+hashpwd+"')");
ResultSet rs=db.exeQuery("select * from users");
String id1=null;
while(rs.next())
{
 id1=(rs.getString("id"));
}

Email db1=new Email();
String sub="One click consultancy";
db1.sendmail(email,sub,"you have successfully registered your account"); 
	response.sendRedirect("page2.jsp");
HttpSession s =request.getSession();
s.setAttribute("id", id1);

}

%>

</body>
</html>