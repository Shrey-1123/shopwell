package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import pojo.Userpojo;

public class userDao 
{
	public static Userpojo login(Userpojo ad)
	{
		Userpojo n=null;
		try
    	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="select * from User where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, ad.getE());
			ps.setString(2, ad.getP());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				n=new Userpojo(rs.getString(2),rs.getString(3),rs.getString(1),rs.getString(5),rs.getString(4));
			}
			return n;
    	}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		return n;
	}
	
	public static boolean insert(Userpojo ob)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="insert into User values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, ob.getN());
			ps.setString(2, ob.getE());
			ps.setString(3, ob.getP());
			ps.setString(4, ob.getPh());
			ps.setString(5,ob.getAddress() );
			
			int x=ps.executeUpdate();
			if(x>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
