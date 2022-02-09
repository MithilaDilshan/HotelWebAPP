package com.hotelapp.model;
import java.io.Serializable;

// create managerlogin class and impliments serializable class //
public class managerlogin implements Serializable{
	//declare variables //
	private static final long serialVersionUID=1;
	private String username;
	private String password;
	
	// create get and set method //
	public String getUserName() {
	
       return username;
}
	
	public void setUserName (String username) {
		
		this.username= username;
		
		
	}
	
	public String getPassword() {
		
	       return password;
	}
	
  public void setPassword (String password) {
		
		this.password= password;
		
		
	}
		
	}
 
