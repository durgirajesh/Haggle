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
String fn=request.getParameter("Id");
String ln=request.getParameter("string");
String user=request.getParameter("string1");
session.putValue("username",user);
String pwd1=request.getParameter("string2");
String place=request.getParameter("string4");
String pin=request.getParameter("string3");
String cid=request.getParameter("cid");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/da3","root","root123");
Statement st=con.createStatement();
ResultSet rs;
PreparedStatement ps1 = con.prepareStatement("insert into register values(?,?,?,?,?)");

ps1.setString(1, user);
ps1.setString(2, pwd1);
ps1.setString(3, place);
ps1.setString(4, pin);
ps1.setString(5, cid);
int ex1 = ps1.executeUpdate();
out.println("Registered Successfully......");

%>
<br><a href="Login.html">Login</a><br></br>
</body>
</html>