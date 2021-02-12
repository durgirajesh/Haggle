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
String p=request.getParameter("id");
session.putValue("Id",p);
String it=request.getParameter("item");
int p1 = Integer.valueOf(request.getParameter("price"));

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/da3","root","root123");
Statement st=con.createStatement();
ResultSet rs;
int i = st.executeUpdate("insert into products values ('" + cid + "','" + p + "','" + it + "','" + p1 + "')");
out.println("Items added successfully Successfully......"+"<br>");

%>
<br><a href="Addprod.html">Wanna add items?</a>
<br><a href="del.html">Wanna Delete items?</a>
<br><a href="Display.html">Display Products</a>

</body>
</html>