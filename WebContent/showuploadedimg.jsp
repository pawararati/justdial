<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <%@ page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="java.io.*" %>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
  <%@page import="java.math.BigInteger"%>
    <%@page import="javax.xml.bind.DatatypeConverter"%>

		<%
		
/* String group = String.valueOf(session.getAttribute("pathname"));
		out.println(group);
		BufferedImage bImage = ImageIO.read(new File(group));
		 ByteArrayOutputStream baos = new ByteArrayOutputStream();
		 ImageIO.write( bImage, "jpg", baos );
	        baos.flush();
	        byte[] imageInByteArray = baos.toByteArray();
	        baos.close();                                   
	        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray); */
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "tests";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
  <%
  
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM images";

System.out.println(sql);


resultSet = statement.executeQuery(sql);


while(resultSet.next()){

 %>
  <%-- <div style="margin-left: 20%;"><img src="G:/Arati_18/JUST/WebContent/images/<%=resultSet.getString(1)%>" alt="img"></div>   --%>
  <div style="margin-left: 20%;"><img src="images/<%=resultSet.getString(3)%>" alt="img" height="85" width="85"></div>  
  <% 
}
}
	 
catch (Exception e) {
e.printStackTrace();
}

%>
</header>

	
</body>
</html>