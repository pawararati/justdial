<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Test</title>
		
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css" type="text/css">
		<link rel="stylesheet" href="css/less.css" type="text/css">
		<link rel="stylesheet" href="css/slider.css" type="text/css">
		<link rel="stylesheet" href="css/slider1.css" type="text/css">
		
		<!--<script src="js/less.js"></script>-->
		<script src="js/slider.js"></script>
		<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}</script>
		
		<style type="text/css">table {
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
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<form name="form" action="#" method="post">
		<table>
	 <tr>
	 
	 <th>Company</th>
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
String sql ="SELECT * FROM test1";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	 
	 <tr>
	<%--  <td><%=resultSet.getString(10) %></td> --%>
	<td><%=resultSet.getString(1) %></td>
	  <td><%=resultSet.getString(2) %></td>
	   <td><%=resultSet.getString(3) %></td>
	    <td><%=resultSet.getString(4) %></td>
	     <td><%=resultSet.getString(5) %></td>
	      <td><%=resultSet.getString(6) %></td>
	       <td><%=resultSet.getString(7) %></td>
	        <td><%=resultSet.getString(8) %></td>
	         <td><img src="images/<%=resultSet.getString(9) %>" alt="img" width="60" height="60"></td>
	        <td><a href="update.jsp?id=<%=resultSet.getString("id")%>">Update</a></td>
	         <td><a href="delete.jsp?id=<%=resultSet.getString("id")%>">Delete</a></td>
	 </tr>
	 
										
										
									
						<% 	}%>
								<!--##################################################### #Ratings show if Ratable contracts  ################################### -->
</table>
	</form>								
	</body>
	</html>