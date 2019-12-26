package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ChangeQty")
public class ChangeQty extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter ob=response.getWriter();
		String var=request.getParameter("var");
		int i=Integer.parseInt(request.getParameter("pid"));
		System.out.println(var +"  "+i);
		HttpSession hs=request.getSession();
		ArrayList<HashMap<String,String>> al=(ArrayList<HashMap<String,String>>)hs.getAttribute("cart_info");
		al.get(i).replace("qty", var); System.out.println(var);
		/*
		 * for(int i=0;i<al.size();i++) { if(al.get(i).get("id").equals(pid)) {
		 * al.get(i).replace("qty", var); System.out.println(var); } }
		 */
		
	}

}
