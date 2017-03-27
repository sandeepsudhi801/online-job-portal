<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbBeanss.Email"%>
        <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><jsp:useBean class = "dbBeanss.dbBean" id="db"/>
<jsp:setProperty property="*" name="db"/>
<%db.connect(); 
Email db1=new Email();
String to=request.getParameter("email");
String uid=request.getParameter("uid");
ResultSet rs=db.exeQuery("select * from apply where id="+uid+"");
String ans="";
while(rs.next())
{
	String unam=(rs.getString("name"));
	ans=ans+unam+",";
	String uemail=(rs.getString("email"));
	ans=ans+uemail+",";
	String jid=(rs.getString("jid"));
	ans=ans+jid+",";
	
db1.sendmail(to,"applicant details",ans);

}
response.sendRedirect("user_details.jsp");
%>
</body>
</html>