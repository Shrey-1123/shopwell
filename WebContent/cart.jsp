<%@page import="pojo.Userpojo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
        <%@page import="pojo.Prod" %>
            <%@page import="dao.ProductDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link href="My_Admin/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
<table style="width:100%;margin-bottom:5px">
    <tbody><tr style=" height:100px;
    background: linear-gradient(to bottom, #33ccff 56%, #ff99cc 100%)">
        <td>
            <div style="clear:both;float:left;width:100px;margin-top:5px;margin-left:2px;">
            
               <img src="My_Admin/shopwell.png" class="img-responsive"  alt="Shopwell">
            </div>
            <div style="float:left;width:60%;"></div>
            </table>
            </div> 
             <%
            HttpSession hs=request.getSession();
             Userpojo up=(Userpojo)hs.getAttribute("user_info");
            String username="";
            if(up!=null)
            {
            	username=up.getN();
            }
     		ArrayList<HashMap<String,String>> we=(ArrayList<HashMap<String, String>>)hs.getAttribute("cart_info");
     		String k="";
     		int d=0;
     		if(we!=null)
     		{
     			k=we.size()+"";
     		}
     		else
            %>  
<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav nav-tabs">
    <li><a href="index.jsp">HOME</a></li>
    <li><a href="#">OFFERS</a></li>
    <li><a href="#">CATEGORY</a></li>
    <li><a href="#">POLICY</a></li>
    <li><a href="">CUSTOMER SERVICE</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
     <li><a href="cart.jsp">CART<span class="badge"><%=k %></span></a></li>
        <%if(username!="") { %>
        
        <li><a href="#"><%=username %></a></li>
         <li><a href="Logout_user">LOGOUT</a></li>
        <%} else { %>
        
        
    <li><a href="usersignup.jsp">SIGN UP</a></li>
    <li><a href="Login.jsp?page=cart.jsp">LOGIN</a></li>
    
    <%} %>

       
    </ul>
</nav>
<table class="table table-responsive" >
<tr>
	<th>Image</th>
	<th>Name</th>
	<th>Price</th>
	<th>Quantity</th>
	<th>Remove</th>
</tr>
<%
            HttpSession hs1=request.getSession();
     		ArrayList<HashMap<String,String>> al=(ArrayList<HashMap<String, String>>)hs1.getAttribute("cart_info");
     		int i=0;
     		if(al==null)
     		{%>
     		
     		<h2>Sorry there's nothing here... </h2>
     		
     		
     	<%}
     		else
     	
     			
     			for(HashMap<String,String> v:al)
     		{
		%>
     	<tr>
     	<td><img src="My_Admin/<%=v.get("img") %>" height="100" width="100"></td>
     	<td><%=v.get("pname")%></td>
     	<td><%=v.get("price")%></td>
     	<td><button class="btn btn-danger" style="border-radius:100%" onClick="minus('txt<%=d%>')">--</button>
		<button class="btn btn-primary" id="txt<%=d%>" ><%=v.get("qty") %></button>
		<button class="btn btn-success" style="border-radius:70%" onClick="plus('txt<%=d%>')">+</button>
		<p id="change"></p>
		<% d++; %>
		<script>
		
		function plus(a)
		{	
			value_min=parseInt(document.getElementById(a).innerHTML,10);
			if(value_min<10)
			{
				document.getElementById(a).innerHTML=++value_min;
			}
			
			 var http = new XMLHttpRequest();
			  http.open("GET", "ChangeQty?var="+value_min+"&pid="+<%=i %>, true);
			  http.send();
			  http.onreadystatechange = function(){
				  if(this.readyState == 4 && this.status == 200)
				  {
					document.getElementById("change").innerHTML="changed";
				  }
			  };
			
		}
		function minus(a)
		{
			value_min=parseInt(document.getElementById(a).innerHTML,10);
			
			if(value_min>1)
			{
				document.getElementById(a).innerHTML=--value_min;
			}
			var http = new XMLHttpRequest();
			  http.open("GET", "ChangeQty?var="+value_min+"&pid="+<%=i %>, true);
			  http.send();
			  http.onreadystatechange = function(){
				  if(this.readyState == 4 && this.status == 200)
				  {
					  document.getElementById("change").innerHTML="changed";
				  }
			  };
		}
		</script></td>
     	
     	<td><a href="remove_cart?index=<%=i++%>">X</a></td>
     	</tr>
     	
     	<%}%>
    <tr><td></td><td></td><td></td><td>
    
    <a href="forward"><button class="btn btn-primary" ">Place Order</button></a></td></tr> 	
     	</table>
</body>
</html>