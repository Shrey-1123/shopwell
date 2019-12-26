<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product Details</title>

<style type="text/css">
<%@include file="bootstrap.min.css"%>
</style>
</head>
<body>
<%
try
{
	String pid=request.getParameter("pid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first", "root", "");
	PreparedStatement ps=conn.prepareStatement("select * from Shopping_Cart where pid=?");
	ps.setInt(1, Integer.parseInt(pid));
	ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
 %>
<form action="Edit.jsp" method="post">
     <table>
     
     	<tr>
     		<td>Name</td>
     		<td><input type="text" name="n" value=<%=rs.getString(2) %>></td>
     	</tr>
     	
     	<tr>
     		<td>Price</td>
     		<td><input type="number" name="p" value=<%=rs.getInt(3) %>></td>
     	</tr>
     	<tr>
     		<td>Quantity</td>
     		<td><input type="number" name="q" value=<%=rs.getInt(4) %>></td>
     	</tr>
     	 <tr><td><input type="hidden" name="pid" value=<%=rs.getInt("pid") %>></td>
     </tr>
     	<tr>
     		<td></td>
     		<td><input type="submit" value="Submit"></td>
     	</tr>
     </table>
</form>
<%
    }
}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>