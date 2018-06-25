<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
	<head>
		<title>Test</title>
	<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 80%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
	
	
	<body>
	
<form name="form" action="./UpdateServlet" method="post">
		<table>
	 <tr><th>Company</th>
	 <th>Location</th>
	 <th>Phone Number</th>
	  <th>Address</th>
	   <th>Rating</th>
	    <th>WebSiteLink</th>
	     <th>Year</th>
	      <th>Content</th>
	       <th>Photo</th>
	       <th></th>
	       <th></th>
	       
	 </tr>
		<%


String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "tests";
String userId = "root";
String password = "root";

 {
Class.forName(driverName);
} 

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%

connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM test1 where id=1";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	 
	 <tr>
	 <td><%=resultSet.getString(1) %></td>
	  <td><%=resultSet.getString(2) %></td>
	   <td><%=resultSet.getString(3) %></td>
	    <td><%=resultSet.getString(4) %></td>
	     <td><%=resultSet.getString(5) %></td>
	      <td><%=resultSet.getString(6) %></td>
	       <td><%=resultSet.getString(7) %></td>
	        <td><%=resultSet.getString(8) %></td>
	         <td><img src="images/<%=resultSet.getString(9) %>" alt="img" width="60" height="60"></td>
	         <td><input type="hidden" name="id" value="<%=resultSet.getString(10)%>"></td>
	         <td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
	 </tr>
	 
										
										
									
						<% 	}%>
								<!--##################################################### #Ratings show if Ratable contracts  ################################### -->
</table>
	</form>								
	</body>
	</html>