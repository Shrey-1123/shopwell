<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Login</title>
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
            <div style="float:left;width:60%;">
            </div>   
        </td>
    </tr>
</tbody></table></div>
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<br><br><br><br>
<div class="well">
<form action="Login" method="post">
	<table class="table table-responsive " >
	<caption align=""><h3><strong>LOGIN AS ADMIN</strong></h3></caption>
		<tr><td>Email:</td>
		<td><input type="email" name="e"></td></tr>
		
		<tr><td>Password:</td>
		<td><input type="password" name="p"></td></tr>
		
		<tr><td></td>
		<td class="text-center"><button type="submit" class="btn btn-primary">LOGIN</button></td></tr>
	</table>
	</div>
</form>
</div>
</body>
</html>