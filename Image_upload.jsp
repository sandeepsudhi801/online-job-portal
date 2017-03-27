<%@page import="java.io.File"%>
<%@page import="java.util.List"%>

<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action='#' method="post" enctype="multipart/form-data">
<input type="text" name="t">
<input type="file" name="f">
<input type="submit" name="sub">
</form>
<% 
String t="";
if(ServletFileUpload.isMultipartContent(request))
{
List<FileItem> m = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
for(FileItem i:m)
{
	if(!i.isFormField())
	{
		String n= new File(i.getName()).getName();
		i.write(new File("C:\\Documents and Settings\\JAVA\\Sandeep"+File.separator+n));
		
	}
	else if(i.getFieldName().equals("t"))
	{
		t=i.getString();
	}
}

}%>
</body>
</html>