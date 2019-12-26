<%@page import="dao.ProductDao"%>
<%@page import="pojo.Prod"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating...</title>

<link href="My_Admin/bootstrap.min.css" rel="stylesheet">
</style>
</head>
<body>
<%	
String n=request.getParameter("n");
String q=request.getParameter("q");
String p=request.getParameter("p");
String pid=request.getParameter("pid");
int x=Integer.parseInt(pid);

Prod ob=new pojo.Prod(n,p,q,x);
        
boolean b=dao.ProductDao.edit(ob);
if(b)
{
	response.sendRedirect("Dashboard.jsp?msg='Update Successful'");
}
else
{
	response.sendRedirect("Dashboard.jsp?msg='Update Unsuccessful'");
}


%>
</body>
</html>