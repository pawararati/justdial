<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tests";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String CompanyName=request.getParameter("name");
String location=request.getParameter("loc");
String phone=request.getParameter("num");
String address=request.getParameter("add");
String rating=request.getParameter("rat");
String weblink=request.getParameter("web");
String year=request.getParameter("year");
String content=request.getParameter("cont");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update test1 set ComapnyName=?,Location=?,PhoneNumber=?,Address=? ,Rating=?,websiteLink=?,Year=?,Content=?where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,CompanyName);
ps.setString(2,location);
ps.setString(3, phone);
ps.setString(4,address);
ps.setString(5, rating);
ps.setString(6,weblink);
ps.setString(7, year);
ps.setString(8,content);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>