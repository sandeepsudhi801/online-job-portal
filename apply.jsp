<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="dbBeanss.Email"%>
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
String s=(String)session.getAttribute("id");
int i=Integer.parseInt(s);
String q = request.getParameter("id");
int jid=Integer.parseInt(q);
ResultSet rs=db.exeQuery("select * from users where id="+i+"");
while(rs.next())
{
	String name=rs.getString("name");
	String email=rs.getString("email");
	db.UpdatQuery("insert into apply (name,email,jid) values('"+name+"','"+email+"',"+jid+")");
	Email db1=new Email();
	String sub="One click consultancy";
	db1.sendmail(email,sub,"you have successfully applied for this job"); 
	response.sendRedirect("page2.jsp");
}


%>

</body>
</html>