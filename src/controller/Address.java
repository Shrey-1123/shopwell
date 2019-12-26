package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Prod;
import pojo.Userpojo;


@WebServlet("/Address")
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession hs=request.getSession();
		Userpojo ob=(Userpojo)hs.getAttribute("user_info");
				
		String a=request.getParameter("var");
		String b=request.getParameter("b");
		String c=request.getParameter("c");
		String d=request.getParameter("d");
		String e=request.getParameter("e");
		String f=request.getParameter("f");
		String g=request.getParameter("g");
		
	
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
				String sql="insert into Address value(?,?,?,?,?,?,?,?)";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,ob.getE() );
				ps.setInt(2,Integer.parseInt(a));
				ps.setString(3, b);
				ps.setString(4, c);
				ps.setString(5, d);
				ps.setString(6, e);
				ps.setString(7, f);
				ps.setInt(8, Integer.parseInt(g));
				
				int x=ps.executeUpdate();
				if(x>0)
				{
					
				}
			}
			catch(Exception exp)
			{
				exp.printStackTrace();
			}
			
		}
	

}
