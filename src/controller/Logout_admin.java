package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/My_Admin/Logout_admin")
public class Logout_admin extends HttpServlet 
{
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			HttpSession hs=request.getSession();
			hs.removeAttribute("admin_info");
			//hs.setAttribute("admin_info", null);
			response.sendRedirect("Index.jsp?msg=Logout Successfull");
		}

}
