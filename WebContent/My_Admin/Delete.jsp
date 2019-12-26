<%@page import="dao.ProductDao"%>
<%@page import="pojo.Prod"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleting...</title>

<link href="bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
		String pid=request.getParameter("pid");
		
		Prod ob=new Prod(pid);
		        
		boolean b=ProductDao.delete(ob);
		if(b)
		{
			response.sendRedirect("Dashboard.jsp?msg='Delete Successful'");
		}
		else
		{
			response.sendRedirect("Dashboard.jsp?msg='Delete Unsuccessful'");
		}
	%>

</body>
</html>