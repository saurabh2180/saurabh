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
<form action="">
<%
String email=request.getParameter("email");

Connection con=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","Saurabh.123");
	 Statement st=con.createStatement();
	 st.executeUpdate("delete  from register where email='"+email+"'");
	 con.close();
	 response.sendRedirect("NewFile.jsp");
	 
	
	
	
}catch(Exception e){
	System.out.print(e);
}


%>
</form>
</body>
</html>