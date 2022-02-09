package com.hotelapp.model;
import java.sql.ResultSet;
import java.sql.SQLException; 

public class manager { // create manager class //
	
	// declare variables //
	private String CustomerID;
	private String CustomerName;
	private String Type;
	private String HotelNo;
	private String NIC;
	private String Address;
	private String job;
	private String CustomerTelephoneNo;
	private String CustomerEmail;
	
	public manager(ResultSet resultSet) throws SQLException{ // use exception //
		
		// initialize variables//
		this.CustomerID = resultSet.getString("CustomerID");
		this.CustomerName = resultSet.getString("CustomerName");
		this.Type = resultSet.getString("Type");
		this.HotelNo = resultSet.getString("HotelNo");
		this.NIC = resultSet.getString("NIC");
		this.Address = resultSet.getString("Address");
		this.job = resultSet.getString("job");
		this.CustomerTelephoneNo = resultSet.getString("CustomerTelephoneNo");
		this.CustomerEmail = resultSet.getString("CustomerEmail");
	}
	// create get and set method //
	public String getCustomerID() {
		return CustomerID;
	}
	public void setCustomerID(String CustomerID) {
		this.CustomerID =CustomerID;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String CustomerName) {
		this.CustomerName =CustomerName;
	}
	public String getType() {
		return Type;
	}
	public void setType(String Type) {
		this.Type =Type;
	}
	public String getHotelNo() {
		return HotelNo;
	}
	public void setHotelNo(String HotelNo) {
		this.HotelNo =HotelNo;
	}
	public String getNIC() {
		return NIC;
	}
	public void setNIC(String NIC) {
		this.NIC =NIC;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String Address) {
		this.Address =Address;
	}
	public String getjob() {
		return job;
	}
	public void setjob(String job) {
		this.job =job;
	}
	public String getCustomerTelephoneNo() {
		return CustomerTelephoneNo;
	}
	public void setCustomerTelephoneNo(String CustomerTelephoneNo) {
		this.CustomerTelephoneNo =CustomerTelephoneNo;
	}
	public String getCustomerEmail() {
		return CustomerEmail;
	}
	public void setCustomerEmail(String CustomerEmail) {
		this.CustomerEmail =CustomerEmail;
	}
}
