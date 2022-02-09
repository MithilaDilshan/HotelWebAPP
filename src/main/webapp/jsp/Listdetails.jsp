 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<!DOCTYPE html>
<html>
<head>
<title>List Details</title>
</head>
<body style="background-color:#ff00ff;">

<center><h1 style="color:MediumSeaGreen;">Retrieve data from database</h1></center>
<table style="background-color:#cccc00;" border="1">
<tr>
<th>CustomerID </th>
<th>CustomerName </th>
<th>Type </th>
<th>HotelNo </th>
<th>NIC </th>
<th>Address </th>
<th>job </th>
<th>CustomerTelephoneNo </th>
<th>CustomerEmail </th>
<th>operation</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database,userid, password);
statement=connection.createStatement();
String sql ="select * from manager";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("CustomerID") %></td>
<td><%=resultSet.getString("CustomerName") %></td>
<td><%=resultSet.getString("Type") %></td>
<td><%=resultSet.getString("HotelNo") %></td>
<td><%=resultSet.getString("NIC") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("job") %></td>
<td><%=resultSet.getString("CustomerTelephoneNo") %></td>
<td><%=resultSet.getString("CustomerEmail") %></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("ID") %>">
<button style = "background-color:black; color:white">delete</button></a><a href="Update.jsp?id=<%=resultSet.getString("ID") %>">
<button style = "background-color:black; color:white">update</button></td> 
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table><br><br><br>
<a href="addDetails.jsp" style="color:black;"> Back </a> 
</body>
</html>