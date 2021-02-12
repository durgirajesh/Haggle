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
String cid=request.getParameter("cid");
session.putValue("CustomerId",cid);
String pid=request.getParameter("pid");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/da3","root","root123");
PreparedStatement ps1 = con.prepareStatement("delete from products where CustomerId=? and Id=?");

ps1.setString(1,cid);
ps1.setString(2,pid);
int ex1 = ps1.executeUpdate(); 

out.println("Items Deleted successfully Successfully......"+"<br>");
%>
</body>
<br><a href="Addprod.html">Wanna add items?</a>
<br><a href="del.html">Wanna Delete items?</a>
<br><a href="Display.html">Display Products</a>
</html>