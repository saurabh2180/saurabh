<%@page import="java.sql.Connection"%>
<%@page import="java.awt.peer.SystemTrayPeer"%>
<%@page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="validation.js"></script>
</head>
<body>

</body>
</html>
<form onsubmit="return validate()"  name="myform"  action="update.jsp" method="post" >
<table border="1">
<tr><th>First Name</th><th>Last Name</th><th>Phone Number</th><th>Location</th></tr>
<%
String email=request.getParameter("email");
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","Saurabh.123");
String query = "select fname,lname,phno,location,email from register where email='"+email+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="phno" value="<%=rs.getString("phno")%>"></td>
<td><input type="text" name="location" value="<%=rs.getString("location")%>"></td>
<td><input type="hidden" name="email" value="<%=rs.getString("email")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update"></td>
</tr>
<%
}
}
catch(Exception e){
	
}
%>
</table>
</form>