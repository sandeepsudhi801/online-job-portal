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

<%out.print("new category");%>
<span  class="control-label col-sm-2">Category:  </span>
<select  name="cat"  required="required">
<option>IT Jobs</option>
<option>Call Center/BPO Jobs</option>
<option>Electronics Jobs</option>
<option>Internship</option>
<option>Sales Jobs</option>
<option>Office Jobs</option>
<option>Networking Jobs</option>

<option>Medical and Health Care</option>
<option>Education and Teaching</option>
<option>Advertising and PR</option>
<option>Fresher Jobs</option>
</select>


<%out.print("new no of vacancy"); %><input type="text" name="no">
<%out.print("new location");%><input type="text" name="loc" >
<%out.print("new experience"); %><input type="text" name="exp">
<%out.print("new sub category");%>
<select  name="sub"  required="required">
<option>part time</option>
<option>full time</option>
</select>
<%out.print("new job description"); %><input type="text" name="jd">

<input type="text" name="id1" value=<% out.print(id);%> readonly>
<input type="submit" name="sub">
<% if(request.getParameter("sub")!=null)
{
String c=request.getParameter("cat");
String no=request.getParameter("no");
String loc=request.getParameter("loc");
String exp=request.getParameter("exp");
String sub=request.getParameter("sub");
String jd=request.getParameter("jd");

String newid=request.getParameter("id1");

db.UpdatQuery("update jobs set category='"+c+"',no_of_vacancy='"+no+"',location='"+loc+"',experience='"+exp+"',sub_category='"+sub+"',job_description='"+jd+"' where id1="+newid+"");
response.sendRedirect("jobs.jsp");
}
%>

</body>
</html>