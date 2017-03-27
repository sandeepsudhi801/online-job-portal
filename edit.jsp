<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>One click consultancy</title>
</head>
<body>
<jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>

<form>
<%
db.connect();
String id = request.getParameter("id");



%>

<%out.print("new company name");%><input type="text" name="name" >
<%out.print("new company address"); %><input type="text" name="addr">
<%out.print("new company contact");%><input type="text" name="cntct" >
<%out.print("new company email"); %><input type="email" name="email">

<input type="text" name="id1" value=<% out.print(id);%> readonly>
<input type="submit" name="sub">
<% if(request.getParameter("sub")!=null)
{
String newname=request.getParameter("name");
String newaddr=request.getParameter("addr");
String newcntct=request.getParameter("cntct");
String newemail=request.getParameter("email");

String newid=request.getParameter("id1");

db.UpdatQuery("update company set compname='"+newname+"',addr='"+newaddr+"',contact='"+newcntct+"',email='"+newemail+"' where id="+newid+"");
response.sendRedirect("Company_details.jsp");
}
%>
</form>
</body>
</html>