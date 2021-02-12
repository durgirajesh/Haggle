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
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/da3","root","root123");
Statement st=con.createStatement();
Statement st1=con.createStatement();
ResultSet rs = st.executeQuery("select * from products where CustomerId='" + cid + "'");
ResultSet rs1 = st1.executeQuery("select * from register where cid='" + cid + "'");
while (rs1.next()) {
	String name = rs1.getString("username");
	out.println("Username : "+ " " + name + "<br>");
	out.println("<br>");
}
int sum = 0;
out.println("Item--->" + "Price" + "<br>");
while (rs.next()) {
	String l1 = rs.getString("Item");
	String l3 = rs.getString("price");
	int inum = Integer.parseInt(l3);
	sum += inum;
	out.println(l1 + "---->" + l3 + " " + "<br>");
}
out.println("Total cost : " + sum+"<br>");
%>

<h2>Thank You !</h2>
<br></br>
<br><a href="Login.html">Logout</a></br>
</body>
</html>