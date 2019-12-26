package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Success")
public class Success extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String p_Id = request.getParameter("mihpayid");
		response.sendRedirect("Success.jsp?a="+p_Id);
		}
		
	/*response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		 String amount = request.getParameter("amount");
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
		        String udf5 =request.getParameter("udf5");
		        String p_Id = request.getParameter("mihpayid");
		        String additionalCharges = request.getParameter("additionalCharges");
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
				         out.println("Successfull with additional charges");
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
		                        }
		        
			
	}
	public String hashCal(String type,String str)
	{
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
	}*/

}
