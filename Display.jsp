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
<form action="Display.jps">
<%
Connection con=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","Saurabh.123");
	 Statement st=con.createStatement();
	 ResultSet rs= st.executeQuery("select fname,lname,email,phno,location from register");
	 %>
	 <TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
	 <tr><td>fist name</td><td>last name</td><td>Email</td><td>Phone Number</td><td>Location</td><td></td>
	 <%
	 while (rs.next()) {
	 %>
	 <TR>
	 <TD><%=rs.getString(1)%></TD>
	 <TD><%=rs.getString(2)%></TD>
	 <TD><%=rs.getString(3)%></TD>
	 <TD><%=rs.getString(4)%></TD>
	  <TD><%=rs.getString(5)%></TD>
	  <TD><a href="edit.jsp?email=<%=rs.getString(3)%>">edit</a> <a href="delete.jsp?email=<%=rs.getString(3)%>">delete</a> </TD>
	 </TR>
	 <% } %>
	 <%
	 rs.close();
	 con.close();
}catch(Exception e){
	System.out.print(e);
}



%>
</form>
</body>
</html>