package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import pojo.Prod;

public class ProductDao 
{
	public static ArrayList<Prod> selectAll()
	{
		ArrayList<Prod> al=new ArrayList<Prod>();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			PreparedStatement ps=conn.prepareStatement("select * from Shopping_Cart");
			ResultSet rs=ps.executeQuery();
		    while(rs.next())
		    {
		    	Prod p=new Prod(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
		    	al.add(p);
		    	
		    } 
		 }
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
	public static boolean insert(Prod ob)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="insert into Shopping_Cart values(?,?,?,?,null)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, ob.getImg());
			ps.setString(2, ob.getN());
			ps.setInt(3, ob.getP());
			ps.setInt(4, ob.getQ());
			
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
	public static boolean delete(Prod ob)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="delete from Shopping_Cart where pid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, ob.getPid());
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
	public static boolean edit(Prod ob)
	{
    	try
    	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="update Shopping_Cart set Name=?,Price=?,Quantity=? where pid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, ob.getN());
			ps.setInt(2, ob.getP());
			ps.setInt(3, ob.getQ());
			ps.setInt(4, ob.getPid());
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
	public static Prod details(Prod ob)
	{
		Prod p=null;
		
    	try
    	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ShoppingCart", "root", "");
			String sql="select * from Shopping_Cart where pid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, ob.getPid());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				p=new Prod(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
				return p;
			}
		
		}
    	catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}


}
