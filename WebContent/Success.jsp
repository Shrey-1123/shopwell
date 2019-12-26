<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Shopwell - Where Shopping Begins</title>
<link rel="icon" href="My_Admin/shopwell.png" type="image/x-icon">
<link href="My_Admin/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color:lightsalmon;">
   
<%
       /*  String amount = request.getParameter("amount");
	String productinfo= request.getParameter("productinfo");
	String txnid = request.getParameter("txnid");
	String phone = request.getParameter("phone");
	String firstname = request.getParameter("firstname");
	String key = "gtKFFx";
	String salt = "eCwWELxi";
	String status = request.getParameter("status");
	String r_h =request.getParameter("hash");
        String hashString="";
        String udf1 =request.getParameter("udf1");
        String udf2 =request.getParameter("udf2");
        String udf3 =request.getParameter("udf3");
        String udf4 =request.getParameter("udf4");
        String udf5 =request.getParameter("udf5"); */
        String p_Id = request.getParameter("a");
        /* String additionalCharges = request.getParameter("additionalCharges");
        out.println("Your paymnet with Payment ID is :" + p_Id + "is ");
        //String udf2 = request.getParameter("udf2");
        String hash;
        String email = request.getParameter("email");
        if(status=="success"){
                if(additionalCharges!=null){
		String hashSequence = additionalCharges+"|"+salt+"|"+status+"||||||"+udf5+"|"+udf4+"|"+udf3+"|"+udf2+"|"+udf1+"|"+email+"|"+firstname+"|"+productinfo+"|"+amount+"|"+txnid+"|";
		
		
			hashString=hashSequence.concat(key);
                        out.println(hashString);
                        hash=hashCal("SHA-512",hashString);
                        out.println(hash);
			if(r_h.equals(hash)){
		         out.println("Successfull with additiona charges");
                        out.println("Transaction details:");
                            out.println("Amount:"+amount);
                            out.println("additionalCharges:"+additionalCharges);
                            out.println("Status of Transaction:"+status);}
			                  
                        else {out.println("Transaction details:");
                            out.println("Amount:"+amount);
                            out.println("additionalCharges:"+additionalCharges);
                            out.println("Status of Transaction:"+status);
                        }
                }
                else {
                String hashSequence = salt+"|"+status+"||||||"+udf5+"|"+udf4+"|"+udf3+"|"+udf2+"|"+udf1+"|"+email+"|"+firstname+"|"+productinfo+"|"+amount+"|"+txnid+"|";
		
		
			hashString=hashSequence.concat(key);
                        out.println(hashString);
                        hash=hashCal("SHA-512",hashString);
                        out.println(hash);
			if(r_h.equals(hash)){
		         out.println("Successfull");
                        out.println("Transaction details:");
                            out.println("Amount:"+amount);
                            out.println("additionalCharges:"+additionalCharges);
                            out.println("Status of Transaction:"+status);}
			                  
                        else{ out.println("failure");
                        out.println("Transaction details:");
                            out.println("Amount:"+amount);
                            out.println("additionalCharges:"+additionalCharges);
                            out.println("Status of Transaction:"+status);}
                }	
        }else {out.println("Transaction details:");
                            out.println("Amount:"+amount);
                            out.println("additionalCharges:"+additionalCharges);
                            out.println("Status of Transaction:"+status);
                        } */
	%>
<%!
/* 	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		
		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();
	} */
%>
    <div class="header" style="width:100%; background-color: white">
    <table>
	<tr><td><img src="My_Admin/shopwell.png" height="100" width="100"></td><td>  </td><td><h3><strong>Where Shopping Begins....</strong></h3></td>	</tr>
    </table>
    </div>
    <div class="well" align="center" >
    <h1>Succesfully Placed Order</h1>
    <h2>Transaction Id is <%=p_Id %></h2>
    <h3><a href="index.jsp">Continue Shopping</a></h3>
    </div>
</body>
</html>


