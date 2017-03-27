<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="Decoder.BASE64Encoder"%>
    <%@page import="java.util.UUID"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>One click consultancy</title>
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">

</head>
<body>

<script type="text/javascript" src="sign_up.js"></script>
<jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>
<%db.connect(); %>
<div class="container-fluid">

<form  action="#">

<div class="form-group">
<label class="control-label col-sm-1" for="name">User Name:</label>
<div class="col-sm-11">
</div>
<input type="text" class="form-control" id="name" name="name1" placeholder="enter name">

</div>

<div class="form-group">
<label class="control-label col-sm-1" for="pwd">Password:</label>
<div class="col-sm-11">
</div>
<input type="password" class="form-control" id="password" name="password11" placeholder="enter password">

</div>

<div class="col-sm-11">
<input type="submit" name="sub" class="btn btn-default">
</div>
</form>
<%
if(request.getParameter("sub")!=null)
{
	
	
	String name=request.getParameter("name1");
	
	String password=request.getParameter("password11");
	System.out.println("select * from users where name='"+name+"'");
	ResultSet rs=db.exeQuery("select * from users where name='"+name+"'");
	String pwd1,salt,id;
	while(rs.next())
	{
		pwd1=(rs.getString("password"));
		salt=(rs.getString("salt"));
		id=(rs.getString("id"));
		String pwd=salt+password;
		
		String hashpwd = new BASE64Encoder().encode(pwd.getBytes());
		
		if(hashpwd.equals(pwd1))
		
		{
		String adminsalt="7750ef39-00e4-488c-bb2c-a4869a6e4e6e";
		String adminpwd=adminsalt+password;
		String adminfinalpwd=new BASE64Encoder().encode(adminpwd.getBytes());
		
		if(adminfinalpwd.equals(pwd1))
			{
				JOptionPane.showMessageDialog(null,"admin");
				response.sendRedirect("admin_page.jsp");
				session.setAttribute("id", id);
			}
		else
			{
				JOptionPane.showMessageDialog(null,"user!!");
			response.sendRedirect("page2.jsp");
			session.setAttribute("id", id);
			}
		}
		else
		{
			JOptionPane.showMessageDialog(null,"Incorrect Password Entered!!");
		}
		

	}
}
%>

</body>
</html>