<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String email=request.getParameter("email");

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String phno=request.getParameter("phno");
String location=request.getParameter("location");

Connection con=null;
if(email == ""||email==null ){
	//response.sendRedirect("edit.jsp?email=email");
	%>
	<h5>please fill all details</h5>
	<%
}else{
	

try{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","Saurabh.123");
Statement st=null;
st=con.createStatement();
st.executeUpdate("update register set fname='"+fname+"',lname='"+lname+"',phno='"+phno+"',email='"+email+"',location='"+location+"' where email='"+email+"'");
con.close();
response.sendRedirect("NewFile.jsp");

}
catch(Exception e){
System.out.println(e);
}
}
%>

</body>
</html>