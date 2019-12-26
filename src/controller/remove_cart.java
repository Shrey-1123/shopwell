package controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/remove_cart")
public class remove_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   	{
   		String i=request.getParameter("index");
   		int in=Integer.parseInt(i);
   		HttpSession hs=request.getSession();
		ArrayList<HashMap<String,String>> al=(ArrayList<HashMap<String, String>>)hs.getAttribute("cart_info");
		al.remove(in);
		response.sendRedirect("cart.jsp");
			
   	}

}
