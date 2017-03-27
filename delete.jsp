<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>One click consultancy</title>
</head>
<body>
<jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>
<%
db.connect();
String id = request.getParameter("id"); 

try{
	
int a=Integer.parseInt(id);
db.UpdatQuery("delete from company where id="+a+"");
response.sendRedirect("Company_details.jsp");


}catch(Exception e)
{
	JOptionPane.showMessageDialog(null,"DELETE THE JOB FIRST!!");
	response.sendRedirect("Company_details.jsp");
}
%>


</body>
</html>