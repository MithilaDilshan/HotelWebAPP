package com.hotelapp.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotelapp.util.DBconnectionManager;
import com.mysql.jdbc.Connection;
/*import com.mysql.jdbc.Connection;*/
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class addDetailsServlet
 */
@WebServlet("/addDetailsServlet")
public class addDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     	 /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
		Connection con=DBconnectionManager.initializeDatabase();
		
		PreparedStatement st=(PreparedStatement) con.prepareStatement("insert into manager(CustomerID,CustomerName,Type,HotelNo,NIC,Address,job,CustomerTelephoneNo,CustomerEmail)values(?,?,?,?,?,?,?,?,?)");
		
		st.setString(1,(request.getParameter("CustomerID")));
		st.setString(2,(request.getParameter("CustomerName")));
		st.setString(3,(request.getParameter("Type")));
		st.setString(4,(request.getParameter("HotelNo")));
		st.setString(5,(request.getParameter("NIC")));
		st.setString(6,(request.getParameter("Address")));
		st.setString(7,(request.getParameter("job")));
		st.setString(8,(request.getParameter("CustomerTelephoneNo")));
		st.setString(9,(request.getParameter("CustomerEmail")));
		
		
		st.executeUpdate();
		
		st.close();
		
		con.close();
		
		PrintWriter out=response.getWriter();
		out.println("<html><head><title>Customer Added </title></head><body><center><h1 style='color:red'> Customer Added Successfully</h1><br><br> <a href='/HotelWebApp/jsp/Listdetails.jsp'><button style ='background-color:green;color:white;padding 5px'>View Details</button></a></center></body></html>");
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		
		
		
}
}
