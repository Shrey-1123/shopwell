package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import pojo.Adminpojo;

public class Admindao 
{
	public static String login(Adminpojo ad)
	{
		String n=null;
		try
    	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="select * from Admin where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, ad.getE());
			ps.setString(2, ad.getP());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				n=rs.getString("Name");
			}
			return n;
    	}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return n;
	}
}
