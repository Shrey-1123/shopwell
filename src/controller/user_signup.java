package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDao;
import pojo.Userpojo;


@WebServlet("/user_signup")
public class user_signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String n=request.getParameter("n");
		String e=request.getParameter("e");
		String ph=request.getParameter("ph");
		String p=request.getParameter("p");
		String address=request.getParameter("address");
		System.out.println(ph);
		System.out.println(n);
		System.out.println(e);
		System.out.println(p);
		System.out.println(address);
		
		Userpojo ob=new Userpojo(e,p,n,address,ph);
		boolean t=userDao.insert(ob);
		if(t==true)
		{
			response.sendRedirect("Login.jsp?msg='sign up done'");
		}
		else
			response.sendRedirect("usersignup.jsp?msg='signup not succesful'");
		
	}

}
