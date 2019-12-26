package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Admindao;
import pojo.Adminpojo;


@WebServlet("/My_Admin/Login")
public class Login_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String e=request.getParameter("e");
		String p=request.getParameter("p");

		Adminpojo ad=new Adminpojo(e,p);
		 
		String n=Admindao.login(ad);

		if(n!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("admin_info", n);
			response.sendRedirect("Dashboard.jsp?msg='Login successful'");
			
		}
		else
			response.sendRedirect("Index.jsp?msg='Input Correct Credentials'");

	}

}
