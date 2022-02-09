 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldb", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM manager WHERE id="+id);
String site = new String("Listdetails.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


 