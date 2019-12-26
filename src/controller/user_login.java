package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.userDao;
import pojo.Userpojo;


@WebServlet("/user_login")
public class user_login extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("e");
		String pass=request.getParameter("p");
		String page_name=request.getParameter("hide");
		Userpojo u=new Userpojo(email, pass);
		Userpojo n=userDao.login(u);
		if(n==null)
		{
			response.sendRedirect("Login.jsp?msg='Input correct Credentials'");
		}
		else
		{
			HttpSession hs=request.getSession();
			hs.setAttribute("user_info",n);
			response.sendRedirect(page_name+"?usern="+n.getN()+"");
		}
		
	}

}
