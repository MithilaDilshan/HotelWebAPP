<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<!--<link rel = "stylesheet"
   type = "text/css"
   href = "manager.css" />-->
<style> 



@CHARSET "ISO-8859-1";

body {
    background-image : url("../images/mi.jpg");
    background-repeat: no-repeat;
  	background-size: auto;
  	background-size: 100% 100%;
  	filter: blur(50px);
  	-webkit-filter: blur(50px);
    
    background-color: linen;
}

h1 {
    color: maroon;
    margin-left: 40px;
}
h2{
	color: maroon;   
} 
.add-button {
    background-color: #d9d9d9; /* blue */
    color: black;
    width: 100%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border: 2px solid #f44336;
}

.add-button:hover {
  background-color: #f44336;
  color: white;
}

.reset-button {
    background-color: #d9d9d9; /*MEGENTA */
    color: black;
    width: 100%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
     border: 2px solid #f44336;
}

.reset-button:hover {
  background-color: #f44336;
  color: white;
}

.list-button {
    background-color: #d9d9d9; /* aqua */
    color: black;
    width: 90%;
    padding: 6px 60px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
     border: 2px solid #f44336;
}

.list-button:hover {
  background-color: #f44336;
  color: white;
}

.delete-button {
    background-color: #FF0000; /* red */
    color: black;
    width: 100%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

.update-button {
    background-color: #00FF00; /* green */
    color: black;
    width: 100%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

.select-button {
    background-color: #00FF00;
    color: black;
    width: 100%;
    padding: 8px 50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

.select-button:hover {
  background-color: #f44336;
  color: white;
}


</style>


<meta charset="UTF-8">
<center><title>Add Customer to the system</title></center>
</head>
<center><body class="body"> 

 

	<h1 class="h2">Add Customer Page</h1>

	  
	<br>
	<br>

	 <form method="POST" action="<%=request.getContextPath()%>/addDetailsServlet">
	 
		<table>

			<tr>
				<td style="font-size:20px">CustomerID</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="CustomerID" placeholder="Enter ID"  /></td>
			</tr>
			<tr>
				<td style="font-size:20px">CustomerName</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="CustomerName" placeholder="Enter Name" /></td>
			</tr>
			<tr>
				<td style="font-size:20px">Type</td>
				<td style="font-size:20px"><input type="radio" name="Type" value="Male" checked />Male<br><input type="radio" name="Type" value="Female" />Female </td>
			</tr>
			<tr>
				<td style="font-size:20px">HotelNo</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="HotelNo" placeholder="Enter HotelNo" /></td>
			</tr>
			<tr>
				<td style="font-size:20px">NIC</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="NIC" placeholder="Enter NIC" /></td>
			</tr>
			<tr>
				<td style="font-size:20px">Address</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="Address" placeholder="Enter Address" /></td>
			</tr>
			 <tr>
				<td style="font-size:20px">job</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="job" placeholder="Enter Job" /></td>
			</tr>
			<tr>
				<td style="font-size:20px">CustomerTelephoneNo</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;" name="CustomerTelephoneNo" placeholder="Enter PhoneNo" /></td>
			</tr>
			<tr>
				<td style="font-size:20px">CustomerEmail</td>
				<td><input type="text" style="
  width: 80%;
  padding: 3px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border:1;
  background-color:black;
  color: white;"  name="CustomerEmail" placeholder="Enter Email" /></td>
			 
			<tr>
				<td colspan="2"><input type="submit" value="Add Customer" class="add-button" /> </td>
			</tr>
			<tr>	
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
			</tr>
		</table>
	</form>

	<form method="POST" action="Listdetails.jsp">

		<table>
			<tr>
				<td colspan="2"><input type="submit" value="List All  Customers" class="list-button" />
				</td>
			</tr>
		</table>
	</form>

<a href="home.jsp" style="color:black;"> Back </a>

</body></center>
</html>