<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ruby - Proceed To Buy</title>
<link rel="icon" href="My_Admin/wer.png" type="image/x-icon">
<link href="My_Admin/bootstrap.min.css" rel="stylesheet">
</head>
    <body style="background-color:lightsalmon;">
    <div class="header" style="width:100%; background-color: white">
    <table>
	<tr><td><img src="My_Admin/shopwell.png" height="100" width="100"></td><td>  </td><td><h3><strong>Where Shopping Begins....</strong></h3></td>	</tr>
    </table>
    <hr style="color:black;">
    </div>
    <div class="col-sm-1"></div>
    <div class="col-sm-10 row-sm-6 well" align="center">
    <p id="alertmsg"></p>
    <div class="col-sm-1"><h1>1</h1></div>
    <div class="col-sm-5 well" style="background-color:white;">
   <label><strong>Delivery Address</strong></label>
    <form class="form-group" method="post" action="payuform.jsp">
   
    <div><input class="form-control"  onkeyup="pin(this.value)" type="number" name="pin" placeholder="Pincode*" id="1"></div>
    <div><input class="form-control" onkeyup="Addr(this.value)" type="text" name="house" placeholder="House No., Building Name*" id="2"></p></div>
    <div><input class="form-control" onkeyup="Addr(this.value)" type="text" name="colony" placeholder="Road Name, Area, Colony*" id="3"></p></div>
    <div><input class="form-control" onkeyup="Addr(this.value)" type="text" name="city" placeholder="City*" id="4"></div>
     <div><input class="form-control" onkeyup="Addr(this.value)" type="text" name="state" placeholder="State*" id="5"></div>
    <div><input class="form-control" onkeyup="Addr(this.value)" type="text" name="landmark" placeholder="landmark" id="6"></div>
    <div><input class="form-control" onkeyup="clr(this.value)" type="number" name="phone" placeholder="Phone Number*" id="7"></div>
    <div align="right"><button class="btn btn-warning" type="button" onClick="">Select from Saved Addresses</button>&nbsp;<button onClick="AddAddress()" type="button" class="btn btn-primary">Save</button></div>
    <p id="Change"></p>
     
    </div>
    <div class="col-sm-1"><h1>2</h1></div>
     <div class="col-sm-5 row-sm-4 well" style="background-color:white;">
 	<label><strong>Payment Mode</strong></label>  
 	<table class="table">
 	<tr><td><input type="radio" name="payment" value="card" id="pay"  onClick="Card()"><strong>Credit-Debit Card</strong>
  	<div id="CardValues" class="form-group form-inline" style="display:none" ><strong>Card No.</strong>&nbsp;&nbsp;<input class="form-control" type="number" name="cardno" style="width:300px;">
  	<br></br><Strong>Valid till</Strong>&nbsp;&nbsp;<input class="form-control" style="width:150px;" type="month">&nbsp;&nbsp;<strong>CVV</strong>&nbsp;&nbsp;<input class="form-control" style="width:50px;" type="password">
    </div>
 	</td></tr>
 	<tr><td><input type="radio" name="payment" value="COD"  onClick="Card()"><strong>Cash on Delivery</strong></td></tr>
 	</table>
 	<a href="Cart.jsp"><button class="btn btn-primary" type="button">Back</button></a>
 	<button class="btn btn-primary" onclick="Proceed()" type="submit">Continue to Buy</button></form>
    </div>
    </div>
    </form>
    <script>
    function Addr(addr)
    {
    	var re_name="^[a-zA-Z0-9./s,-]*$";
    	if(addr.match(re_name)!=null)
    		{
    			document.getElementById('alertmsg').innerHTML="";
    			}
    	else
    		{
    			document.getElementById('alertmsg').innerHTML="Fill Address values correctly";
    		}
    }
    function pin(pincode)
    {
    	var re_ph="^[0-9]{7}$";
    	if(pincode.match(re_name)!=null)
    		{document.getElementById('alertmsg').innerHTML="Pincode";}
    	else
		{
		document.getElementById('alertmsg').innerHTML="";

		}
    }
    function clr(ph)
    {
    	var re_ph="^[0-9]{7}$";
    	if(ph.match(re_name)!=null)
    		{
    		document.getElementById('alertmsg').innerHTML="Phone";
    		}
    	else
		{
		document.getElementById('alertmsg').innerHTML="";

		}
    }
  	function Card()
 	 {
  		var card=document.getElementById('pay');
  		var CardValues=document.getElementById('CardValues');
  		
  		if(card.checked)
  			{	
  				CardValues.style.display="block";
  			} 	
  		else
  			{
  				CardValues.style.display="none";
  			}
  	}
  	
  	function Address()
  	{
  		if(document.getElementById('1').value=="" || document.getElementById('2').value=="" || document.getElementById('3').value=="" || document.getElementById('4').value=="" || document.getElementById('5').value=="" || document.getElementById('4').value=="" )
  		{
  				document.getElementById('alertmsg').innerHTML="Fill all important feilds";
  		}
  		
  	}
 	function Proceed()
  	{
  		if(document.getElementById('1').value=="" || document.getElementById('2').value=="" || document.getElementById('3').value=="" || document.getElementById('4').value=="" || document.getElementById('5').value=="" || document.getElementById('4').value=="" )
  		{
  				document.getElementById('alertmsg').innerHTML="Fill all important feilds";
  		}
  		else if(document.getElementById('pay').value=="")
  			{
  			 	document.getElementById('alertmsg').innerHTML="Select Payment method";
  			}
  	}
 	function AddAddress()
 	{
 		a=document.getElementById('1').value;
 		b=document.getElementById('2').value;
 		c=document.getElementById('3').value;
 		d=document.getElementById('4').value;
 		e=document.getElementById('5').value;
 		f=document.getElementById('6').value;
 		g=document.getElementById('7').value;
 		var http=new XMLHttpRequest();
 		http.open("POST","Address", true);
 		http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
 		http.send("var="+a+"&b="+b+"&c="+c+"&d="+d+"&e="+e+"&f="+f+"&g="+g);
 		
 		http.onreadystatechange=function(){
 			if(this.readyState==4 && this.status==200)
 				{
 				   document.getElementById('Change').innerHTML="successs";
 				}
 		};
 		
 		
 		
 		
 	}
    
	 </script>
</body>
</html>