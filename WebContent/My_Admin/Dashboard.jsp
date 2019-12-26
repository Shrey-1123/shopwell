
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
        <%@page import="pojo.Prod" %>
            <%@page import="dao.ProductDao" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html;charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
<table style="width:100%;margin-bottom:5px">
    <tbody><tr style=" height:100px;
    background: linear-gradient(to bottom, #33ccff 56%, #ff99cc 100%)">
        <td>
            <div style="clear:both;float:left;width:100px;margin-top:5px;margin-left:2px;">
            
               <img src="shopwell.png" class="img-responsive"  alt="Shopwell">
            </div>
            <div style="float:left;width:60%;"></div>
            </table>
<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
    <li><a href="Dashboard.jsp">HOME</a></li>
    <li><a href="InsertProduct.jsp">INSERT</a></li>
    <li><a href="EditProd.jsp">PRODUCTS</a></li>
    <li><a href="">ABOUT</a></li>
    <li><a href="">HELP</a></li>
    </ul>


<%

	String s=(String)session.getAttribute("admin_info");
	if(s==null)
	{
		response.sendRedirect("Index.jsp?msg=Please Login First");
	}
	else
	{
%>


<ul class="nav navbar-nav navbar-right">
	<li><a href="#">welcome <%=s %></a></li>
	<li><a href="Logout_admin">Log Out</a></li>

</ul>

<%
	}
%>


</nav>
</div>
<div class="well text-center ">
<h1>LIST OF ITEMS</h1>
</div>
<%
	String msg=request.getParameter("msg");
    if(msg!=null)
    {
    	out.println(msg);
    }
%>
<div class="col-sm-1">
</div>
<div class="col-sm-8">
<table class="table table-responsive table-bordered table-striped" cellspacing="7" cellpadding="5" border=5>
     	<tr>
     		<th>Image</th>
     		<th>Name</th>
     		<th>Price</th>
     		<th>Quantity</th>
     		<th colspan="2" align="center">Action</th>
     	</tr>
     	<%
     		ArrayList<Prod> al=dao.ProductDao.selectAll();
     	
     		for(Prod v:al)
     		{
		%>
     	<tr>
     	<td><img src="<%=v.getImg() %>" height="100" width="100"></td>
     	<td><%=v.getN()%></td>
     	<td><%=v.getP()%></td>
     	<td><%=v.getQ()%></td>
     	<td>
     	<a href="EditProd.jsp?pid=<%=v.getPid() %>"><button type="button" class="btn btn-success btn-md text-white" >EDIT</button></a></td>
     	<td><a href="Delete.jsp?pid=<%=v.getPid() %>"><button type="button" class="btn btn-danger btn-md" >DELETE</button></a></td>	
     	</tr>
     	
     	<%
     		}
     	%>

     	
</table>
</div>
<br><br>
</body>
</html>