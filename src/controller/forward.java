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

@WebServlet("/forward")
public class forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession hs=request.getSession();
		 Userpojo u=(Userpojo)hs.getAttribute("user_info");
		 if(u!=null)
		 {
			 response.sendRedirect("ProceedToBuy.jsp");
		 }
		else
			response.sendRedirect("Login.jsp?msg='You have to login first'");
	}

}
