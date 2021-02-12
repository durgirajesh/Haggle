<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<%
	String user=request.getParameter("name");
session.putValue("username",user);
String pwd1=request.getParameter("pswd");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/da3","root","root123");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from register where username='" + user + "'");
while(rs.next())
{
	if (rs.getString(2).equals(pwd1)) {

		response.sendRedirect("Addprod.html");
	} else {
		out.println("Invalid");
	}
}
%>
</body>
</html>