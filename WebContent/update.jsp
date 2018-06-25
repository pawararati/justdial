<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <!DOCTYPE html>
<html>
<body>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "tests";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from test1 where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Company Name:<br>
<input type="text" name="name" value="<%=resultSet.getString(1) %>">
<br>
Location:<br>
<input type="text" name="loc" value="<%=resultSet.getString(2) %>">
<br>
Phone Number:<br>
<input type="text" name="num" value="<%=resultSet.getString(3) %>">
<br>
Address:<br>
<input type="text" name="add" value="<%=resultSet.getString(4) %>">
<br>
Rating:<br>
<input type="text" name="rat" value="<%=resultSet.getString(5) %>">
<br>
WebSite Link:<br>
<input type="text" name="web" value="<%=resultSet.getString(6) %>">
<br>
Year:<br>
<input type="text" name="year" value="<%=resultSet.getString(7) %>">
<br>
Content:<br>
<input type="text" name="cont" value="<%=resultSet.getString(8) %>">
<%-- <br>
Photo:<br>
<input type="file" name="file" value="<%=resultSet.getString(9) %>">
<br> --%>
<br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<!-- </body>
</html> -->