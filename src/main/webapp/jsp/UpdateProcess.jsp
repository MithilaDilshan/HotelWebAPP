<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/hoteldb";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String CustomerID=request.getParameter("CustomerID");
String CustomerName=request.getParameter("CustomerName");
String Type=request.getParameter("Type");
String HotelNo=request.getParameter("HotelNo");
String NIC=request.getParameter("NIC");
String Address=request.getParameter("Address");
String job=request.getParameter("job");
String CustomerTelephoneNo=request.getParameter("CustomerTelephoneNo");
String CustomerEmail=request.getParameter("CustomerEmail");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update manager set id=?,CustomerID=?,CustomerName=?,Type=?,HotelNo=?,NIC=?,Address=?,job=?,CustomerTelephoneNo=?,CustomerEmail=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, CustomerID);
ps.setString(3, CustomerName);
ps.setString(4, Type);
ps.setString(5, HotelNo);
ps.setString(6, NIC);
ps.setString(7, Address);
ps.setString(8, job);
ps.setString(9, CustomerTelephoneNo);
ps.setString(10, CustomerEmail);

int i = ps.executeUpdate();
if(i > 0)
{
	//redirect page
	String site = new String("Listdetails.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
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
