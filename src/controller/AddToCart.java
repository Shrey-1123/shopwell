package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDao;
import pojo.Prod;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String pid=request.getParameter("pid");
		
		String qty=request.getParameter("qty");
		System.out.println(pid+" "+qty);
		
		Prod Pro=ProductDao.details(new Prod(pid));
		HashMap<String,String> sp=new HashMap<String,String>(); 
		sp.put("id", pid);
		sp.put("qty", qty);
		sp.put("img",Pro.getImg());
		sp.put("pname",Pro.getN());
		sp.put("price",String.valueOf(Pro.getP()));
		
		HttpSession hs=request.getSession();
		ArrayList<HashMap<String, String>> al=(ArrayList<HashMap<String, String>>)hs.getAttribute("cart_info");
		if(al==null)
		{
			al=new ArrayList<HashMap<String,String>>();
			al.add(sp);
			hs.setAttribute("cart_info", al);
		}
		else 
		{
			int flag=0;
			for(int i=0;i<al.size();i++)
			{
				if(al.get(i).get("id").equals(sp.get("id")))
				{
					int q=Integer.parseInt(al.get(i).get("qty"));
					q=q+Integer.parseInt(qty);
					al.get(i).replace("qty", String.valueOf(q));
					flag=1;
				}
			}
			
			if(flag==0)
			{
				al.add(sp);
				hs.setAttribute("cart_info", al);
				
			}
			 
		
					
			
		}
		
		response.sendRedirect("cart.jsp?msg='item added successfully'");
		
		
		System.out.println(hs.getAttribute("cart_info"));
		
		
	}
	

}
