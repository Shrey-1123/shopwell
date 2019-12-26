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
</head>
<body>
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
<form action="user_signup" class="well"  method="post" style=" border-radius: 15px; background-color:white;hieght:200px">
	
	<div class="form-group" style=" font-style: normal;"> <h3><strong>SIGN UP</strong></h3></div>

	<div class="form-group"><input class="form-control" type="text" name="n" placeholder="Name" style="width:400px;" id="1" onBlur="clr_name()">
	<span style="color:red;" id="2"></span></div>
		<div class="form-group"><input class="form-control" type="email" name="e" placeholder="Email" style="width:400px;" id="3" onBlur="clr_email()"><span id="4"></span></div>
		    
			
		
		<div class="form-group"><input class="form-control" type="text" name="ph" placeholder="Phone no." style="width:400px;" id="5" onBlur="clr_ph()"><span id="6"></span></div>
		<div class="form-group"><input class="form-control" type="password" name="p" placeholder="Password" style="width:400px;" id="7" onkeyup="clr_pass()"><span id="8"></span></div>
		<div class="form-group"><input class="form-control" type="password"  placeholder="Confirm Password" style="width:400px;" id="9" onBlur="mismatch()"><span id="10"></span></div>
		<div class="form-group">
		<textarea class="form-control" name="address" id="11" placeholder="Address.."></textarea><span id="12"></span></div>
			
		
			<div class="form-group"><button type="submit" onClick="valid()" class="btn btn-primary">Sign Up</button></div>
		<div><a href="Login.jsp">Already have an account? Log In</a></div>
	
	
	</form>
	</div>
</div>
</div>
</body>
<script>
var re_ph="^[0-9]{10}$";
var re_ps=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}$/;
var re_name="^([a-zA-Z ])+([a-zA-Z])*$";

function mismatch()
{
	if(document.getElementById('9').value!=document.getElementById('7').value)
	{
		document.getElementById('10').innerHTML="Password Mismatch";	
	}
	else
	{
		document.getElementById('10').innerHTML="";	
	}
		
}
function clr_name()
{
	n=document.getElementById('1').value;
	if(n.match(re_name))
	{
		document.getElementById('2').innerHTML=" ";	
	}
	else
	{
		document.getElementById('2').innerHTML="Enter valid name";	
	}
}

function clr_email()
{
	
	var re_email=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	
	e=document.getElementById('3').value;
	if(e.match(re_email))
	{
		
		document.getElementById('4').innerHTML="";	
	}
	else
	{
		
		document.getElementById('4').innerHTML="Enter valid email";	
		
	}
}

function clr_ph()
{
    n=document.getElementById('5').value;
	if(n.match(re_ph)!=null)
	{
		document.getElementById('6').innerHTML="";	
	}
	else 
	{
		document.getElementById('6').innerHTML="Enter valid phoneno. ";	
	}
}

function clr_pass()
{
	n=document.getElementById('7').value;
	if(n.match(re_ps)!=null)
	{
		document.getElementById('8').innerHTML="";	
	}
	else
	{
		document.getElementById('8').innerHTML="password should atleast be 6 characters ";	
	}
}



function valid()
{
	flag=1;
	if(document.getElementById('1').value=="")
	{
		flag=0;
		document.getElementById('2').innerHTML="Enter Valid Name";	
	}
	if(document.getElementById('3').value=="")
	{
		flag=0;
		document.getElementById('4').innerHTML="Enter Valid Email";	
	}
	if(document.getElementById('5').value=="")
	{
		flag=0;
		document.getElementById('6').innerHTML="Enter Valid Phone";	
	}
	if(document.getElementById('7').value=="")
	{
		flag=0;
		document.getElementById('8').innerHTML="Enter Valid Password";	
	}
	if(document.getElementById('9').value=="")
	{
		flag=0;
		document.getElementById('10').innerHTML="Enter Valid Password";	
	}
	alert("You Sure?");
	if(flag==0)
	return false;
	else
	return true;
}
</script>
</html>