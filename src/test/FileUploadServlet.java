package test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/*import jdk.nashorn.internal.ir.RuntimeNode.Request;*/


/**
 * Servlet implementation class FileUploadServlet
 */
//@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class FileUploadServlet extends HttpServlet {
	/**
	 * 
	 */
	/*private static final long serialVersionUID = 1L;*/
	/*private static final long serialVersionUID = 1L;*/
	private static final String SAVE_DIR="images";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    /*public FileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
*/
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException,FileNotFoundException{
		System.out.println("hii");
		 response.setContentType("text/html;charset=UTF-8");
		    PrintWriter out = response.getWriter();
		        String savePath = "G:/Arati_18/JUST18/WebContent" + File.separator + SAVE_DIR;
		            File fileSaveDir=new File(savePath);
		            if(!fileSaveDir.exists()){
		                fileSaveDir.mkdir();
		            }
		        String firstName=request.getParameter("firstname");
		        System.out.println(firstName);
		        String lastName=request.getParameter("lastname");
		        Part part=request.getPart("file");
		        String fileName=extractFileName(part);
		        System.out.println(fileName);
		        part.write(savePath + File.separator + fileName);
		       /* 
		        //You need this loop if you submitted more than one file 
		        for (Part part : request.getParts()) {
		        String fileName = extractFileName(part);
		        part.write(savePath + File.separator + fileName);
		    }*/
		       try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tests","root","root");
		        String query="INSERT INTO images(first, last, file) values (?, ?, ?)";
System.out.println(query);
		            PreparedStatement pst;
		            pst=con.prepareStatement(query);
		            pst.setString(1, firstName);
		            pst.setString(2,lastName);
		            String filePath= fileName ;
		            System.out.println(filePath);
		            pst.setString(3,filePath);
		            pst.executeUpdate();
		           
		           
		}
		catch(Exception e)
		        {}
		       RequestDispatcher rd=request.getRequestDispatcher("showuploadedimg.jsp");
		         rd.include(request, response);
		}
		    // file name of the upload file is included in content-disposition     header like this:
		//form-data; name="dataFile"; filename="PHOTO.JPG"
		private String extractFileName(Part part) {
		    String contentDisp = part.getHeader("content-disposition");
		    String[] items = contentDisp.split(";");
		    for (String s : items) {
		        if (s.trim().startsWith("filename")) {
		            return s.substring(s.indexOf("=") + 2, s.length()-1);
		        }
		    }
		    return "";
		 
		   
		}
		
	}


