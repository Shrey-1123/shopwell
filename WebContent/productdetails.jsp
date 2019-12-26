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
<title>Product details</title>
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
     <li><a href="cart.jsp">CART<%{ %><span class="badge"><%=k %></span><%} %></a></li>
     <%if(username!="") { %>
        
        <li><a href="#"><%=username %></a></li>
         <li><a href="Logout_user">log out</a></li>
        <%} else { %>
        
        
    <li><a href="usersignup.jsp">SIGN UP</a></li>
    <li><a href="Login.jsp?page=productdetails.jsp">LOGIN</a></li>
    
    <%} %>

    </ul>
    
</nav>
<% String pid=request.getParameter("pid");	
    if(pid==null)
    {
    	pid=(String)session.getAttribute("pro_id");
    }
    else
    {
    	session.setAttribute("pro_id", pid);
    }
   Prod p=new Prod(pid); 
   Prod ob=ProductDao.details(p);
   
   
%>
<div class="well col-sm-4 row-sm-5" >
<img src="My_Admin/<%=ob.getImg() %>" height=400 width=400>
 
</div>
<div class="col-sm-2"></div>
<div class="col-sm-3 well">
  <h4>Price:Rs.<%=ob.getP()%></h4>
  <p><strong>Quantity</strong></p>
  <form action="AddToCart" method="post">
  <input type="hidden" name="pid" value="<%=ob.getPid() %>">
  <select class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" value="Quantity" name="qty">
  <option>1</option>
    <option>2</option>
      <option>3</option>
        <option>4</option>
          <option>5</option>
 </select>

 
                <button type="submit" class="btn btn-primary" >Add to Cart</button>
   </form>
</div>

</body>
</html>