<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script  type="text/javascript" src="validation.js" >


</script>
</head>
<body>
<form name="myform" onsubmit="return validate()" action="index.jsp" method="get"  >
<table  border="1"> 
<tr><td>Username</td><td><input type="text" name="uname" /></td></tr>
<tr><td>Password</td><td><input type="password" name="password" /></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="Confirm_password" /></td></tr>
<tr><td>First Name</td><td><input type="text" name="fname" /></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname" /></td></tr>
<tr><td>Email</td><td><input type="text" name="email" /></td></tr>
<tr><td>Phone No</td><td><input type="text" name="phno" /></td></tr>
<tr><td>Location</td><td><input type="text" name="location" /></td></tr>
<tr><td><input type="submit"  value="Submit" onclick="" /></td><td><input type="reset"  value="Reset"/></td></tr>
</table>

<%
String UserID=request.getParameter("uname");
String password=request.getParameter("password");
String cpassword=request.getParameter("Confirm_password");
String FirstName=request.getParameter("fname");
String LastName=request.getParameter("lname");
String EmailID=request.getParameter("email");
String Phone= request.getParameter("phno");
String Loaction=request.getParameter("location");

if(UserID ==""||UserID==null && password == ""||password==null && EmailID ==""||EmailID==null && Phone == "" ||Phone==null && Loaction  == ""||Loaction==null && FirstName == ""||FirstName==null && LastName =="" ||LastName==null )
	{
		%>
		
		<h5>please fill all details</h5>
		
		<%
	
	}else if(!password.equals(cpassword)){
%>
		
		<h5>Password Must be same</h5>
		
		<%
	}
		
else{

int updateQuery = 0;
Connection con=null;


try{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","Saurabh.123");

	String str="insert into register(userId,password,fname,lname,email,phno,location) values(?,?,?,?,?,?,?)";
	PreparedStatement p=con.prepareStatement(str);
	p.setString(1,UserID);	
	p.setString(2,password);
	p.setString(3,FirstName);
	p.setString(4,LastName);
	p.setString(5,EmailID);
	p.setString(6,Phone);
	p.setString(7,Loaction );
	updateQuery = p.executeUpdate();
	 if (updateQuery != 0){
	 %>
	<br>
	           <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
		      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
		   </table>
	<%
	}
	 con.close();
}catch(Exception e){
	System.out.print(e);
}
	
}	

	







%>


<jsp:include page="Display.jsp"></jsp:include>

</form>
</body>
</html>