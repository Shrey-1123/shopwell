package controller;

import java.io.File;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.ProductDao;
import pojo.Prod;


@WebServlet("/My_Admin/Control")
public class Control extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private final String directory="all_pic"; 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		String img="";
		String n="";
		String p="";
		String q="";
		try
		{
		if(ServletFileUpload.isMultipartContent(request))
		{
			List<FileItem> AllItems=new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
			for(FileItem item:AllItems)
			{
				//System.out.println(item);
				if(!item.isFormField())
				{
					String file_name=new File(item.getName()).getName();
					img=directory+File.separator+file_name;
					//System.out.println(img);
					
					item.write(new File("E:\\backupnew\\eclipse-workspace\\shoopingkart\\Shoppingcart\\shopwell\\WebContent\\My_Admin\\"+img));
				}
			}
			FileItem path=AllItems.get(1);
			n=path.getString();
			
			path=AllItems.get(2);
			p=path.getString();
			
			path=AllItems.get(3);
			q=path.getString();
			
			Prod ob=new Prod(img,n,p,q);
			boolean b=ProductDao.insert(ob);
			if(b)
				response.sendRedirect("Dashboard.jsp?msg='Successfully Added'");
			else
			{
				response.sendRedirect("Dashboard.jsp?msg='Failed to add'");
			}
			
			
		}
	}
		catch(Exception e)  
		{
			e.printStackTrace();
		}
	}

}
