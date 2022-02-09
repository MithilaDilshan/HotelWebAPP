<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hoteldb";
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
String sql ="select * from manager where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head> 
<style>
body{
 	 background-image : url("../images/md.jpg");
    background-repeat: no-repeat;
  	background-size: auto;
  	background-size: 100% 100%;
  	filter: blur(50px);
  	-webkit-filter: blur(50px);
}
</style>
<title>Update Details</title>
</head>
<center>
<body class = "body">
<center><h1 style="color:MediumSeaGreen;">Update data from database in jsp</h1></center>
<form method="post" action="UpdateProcess.jsp">
 
<br>
<table>
<tr>
<td>
 
<input type="hidden" name="id" value="<%=resultSet.getString("ID") %>">
<input type="text" name="id" value="<%=resultSet.getString("ID") %>" disabled >
</td> 
</tr>
			<tr>
				<td>CustomerID</td>
				<td><input type="text" name="CustomerID"  value="<%=resultSet.getString("CustomerID") %>"
				/></td>
			</tr>
			<tr>
				<td>CustomerName</td>
				<td><input type="text" name="CustomerName" value="<%=resultSet.getString("CustomerName") %>"
				 /></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="Type"    value="<%=resultSet.getString("Type") %>">
				  </td>
			</tr>
			<tr>
				<td>HotelNo</td>
				<td><input type="text" name="HotelNo" value="<%=resultSet.getString("HotelNo") %>"
				 /></td>
			</tr>
			<tr>
				<td>NIC</td>
				<td><input type="text" name="NIC" value="<%=resultSet.getString("NIC") %>"
				 /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="Address" value="<%=resultSet.getString("Address") %>"
				 /></td>
			</tr>
			 <tr>
				<td>job</td>
				<td><input type="text" name="job" value="<%=resultSet.getString("job") %>"
				 /></td>
			</tr>
			<tr>
				<td>CustomerTelephoneNo</td>
				<td><input type="text" name="CustomerTelephoneNo" value="<%=resultSet.getString("CustomerTelephoneNo") %>"
				 /></td>
			</tr>
			<tr>
				<td>CustomerEmail</td>
				<td><input type="text" name="CustomerEmail" value="<%=resultSet.getString("CustomerEmail") %>"
				 /></td>
			 
			 
			</tr> 
			</table>
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>
</body>
</html>