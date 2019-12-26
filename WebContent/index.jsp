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
<link href="My_Admin/bootstrap.min.css" rel="stylesheet">
<title>Shopwell</title>

</head>
<body>
<div>
<table style="width:100%;margin-bottom:5px">
    <tbody><tr style=" height:100px;
    background: linear-gradient(to bottom, #33ccff 56%, #ff99cc 100%)">
        <td>
            <div style="clear:both;float:left;width:100px;margin-top:5px;margin-left:2px;">
            
               <img src="My_Admin/shopwell.png" class="img-responsive"  alt="Shopwell">
               <td><h3><strong>Where Shopping Begins....</strong></h3></td>
            </div>
            <div style="float:left;width:60%;"></div>
            </table>
            </div> 
            <%
            
             HttpSession hs=request.getSession();
             Userpojo user=(Userpojo)hs.getAttribute("user_info");
             String username="";
             if(user!=null)
             {
            	 username=user.getN();
             }
     		 ArrayList<HashMap<String,String>> we=(ArrayList<HashMap<String, String>>)hs.getAttribute("cart_info");
     		 String k="";
     		
     		   if(we!=null)
     		    {
     			k=we.size()+"";
     		    }
     		
     		   
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
    
    <li><a href="cart.jsp">CART <span class="badge"><%=k %></span></a></li>
    <%if(username!="") { %>
    <li><a href="#"><%=username %></a></li><li><a href="Logout_user">LOGOUT</a></li><%}  else { %>
    
    
    <li><a href="usersignup.jsp">SIGN UP</a></li>
    <li><a href="Login.jsp?page=index.jsp">LOGIN</a></li>
    <%} %>
    
    </ul>
</nav>

 <div class="col-sm-2  well " data-spy="scroll" style="float:left; height:100%; width:16%; " data-offset="30">
     <div class="panel-group">
    <div class="panel panel-default">
    
    <div class="panel-heading">
    <h4 class="panel-title"><a data-toggle="collapse" href=" #collapse1">Sort</a></h4></div>
    <div class="panel-collapse collapse" id="collapse1">
  <ul class="list-group">
  <li class="list-group-item">Recommended</li>
	 <li class="list-group-item">Price High to Low</li>
	 <li class="list-group-item">Price Low to High</li>
	 <li class="list-group-item">Exclusive to Ruby</li></ul>
    <div class="panel-footer"></div>
    </div>
   </div>
   </div>
    <div class="panel-group">
    <div class="panel panel-default">
    <div class="panel-heading">
    <h4 class="panel-title"><a data-toggle="collapse" href="#collapse2">Filter</a></h4></div>
    <div class="panel-collapse collapse" id="collapse2">
  <ul class="list-group">
  <li class="list-group-item">Price</li>
    <li class="list-group-item">Category</li>
    <li class="list-group-item">Occasion</li>
    <li class="list-group-item">Size</li>
	<li class="list-group-item">Ratings</li>
    </ul>
    <div class="panel-footer"></div>
    </div>
   </div>
   </div>
  </div>
 <div  style="width:82%; height:100%; float:right;">
     	<%
            
           
     		ArrayList<Prod> al=dao.ProductDao.selectAll();
     		for(Prod v:al)
     		{
		%>
		
		 <div class="row-sm-2">
		  <div class="col-sm-2">
		 
		  
		  <div class="product-content well" style=" width:190px;"">
           <div class="product-content-head">
             <h3 class="product-title"><%=v.getN()%></h3>
              <h4>Price:Rs.<%=v.getP()%></h4> 
               <div class="product-rating d-inline-block">
     	
     	<img src="My_Admin\<%=v.getImg() %>" height="100" width="100">
     	
     	
     	
     	<br>
     	</div>
     	 <div class="product-btn">
                <br>
              <a href="productdetails.jsp?pid=<%=v.getPid() %>"><button type="button" class="btn btn-primary text-white">Details</button></a></div>
          
            
             
               </div>
            </div>    
           </div>
     	 
     	
     	
     	<%
     		}
     	%>
       </div>                                        
           
    </div> 
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
  </body>
</html>