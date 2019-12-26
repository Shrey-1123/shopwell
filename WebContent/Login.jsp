<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopwell-Login</title>
<link rel="icon" href="My_Admin/shopwell.png" type="image/x-icon">
<link href="My_Admin/bootstrap.min.css" rel="stylesheet">
</head>
 <body style="background-color:lightsalmon;">
 <div class="header" style="width:100%; background-color: white">
    <table>
	<tr><td><img src="My_Admin/shopwell.png" height="100" width="100"></td><td> &nbsp; &nbsp; </td>
	<td><h3><strong>Where Shopping Begins....</strong></h3></td>
	</tr>
	
    </table>
    <hr>
    </div>

<div class="col-sm-7">
 <div class="col-sm-1"></div><br></br><br></br><br></br>
  <div class="col-sm-10 row-sm-2">
  <div style="color:balck; background-color:lightsalmon;">
  <h3><strong>
  Shopwell is a Online Shopping Website created by us for Educational Purposes.</br>
  The interface is created using JSP, Bootstrap, JavaScript, AJAX etc.,</br>
  and back-end code is written in Java along with server myPHPadmin.
  </strong></h3>
  </div>
  </div>

</div>
 <div class="col-sm-4 " align="center"> 
<div class="row-sm-4">
<div class="row-sm-8">
<form action="user_login" class="well "action="LoginUser" method="post" style=" border-radius: 15px; background-color:white;hieght:200px">
	
	<div class="form-group" style=" font-style: normal;"> <h2><label>LOGIN</label></h2></div>

	
		<div><label class="control-label"><input class="form-control" type="email" style="width:auto;" name="e" placeholder="Email"></label></div>
		    
			
		<div><label><input class="form-control" type="password"  style="width:auto;" name="p" placeholder="Password"></label></div>
		<%
			String loc_page=request.getParameter("page");
			if(loc_page==null)
				loc_page="index.jsp";
		%>
		<div><label><input class="form-control" type="text" value="<%=loc_page %>"  style="width:auto;" name="hide" ></label></div>
		<div><a href="UserSignup.jsp">Forgot password?</a></div>
			
		
			<div class="form-group"><button type="submit" class="btn btn-primary">Login</button></div>
		
	
	<div><a href="usersignup.jsp">New to Shopwell? SignUp</a></div>
	
	
	</form>
	</div>
</div>
</div>
</body>
</html>