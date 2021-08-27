<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="" rel="stylesheet" id="style">
<meta charset="ISO-8859-1">
<title>Insert here</title>
<!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
</head>
<body>
<%
String usn = request.getParameter("usn");
int amount = Integer.parseInt(request.getParameter("amount"));
String reason = request.getParameter("reason");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
PreparedStatement ps=con.prepareStatement("insert into mess_due values(?,?,?,?,?)");
ps.setString(1,usn);
ps.setInt(2,amount);
ps.setString(3,reason);
ps.setInt(4,0);
ps.setString(5,"Mess_Due");

int flag=ps.executeUpdate();
%>
<% if(flag>0){ %>
<center><div class="mansic">
<h2> VALUES INSERTED SUCCESSFULLY</h2>
<p><input type="button" onclick="window.location.href ='admin_home.jsp';" value="Try_Again"/>
<input type="button" onclick="window.location.href ='admin_hom.jsp';" value="Home"/></p>
<% } else {%>
<h3> VALUES COULDNT BE INSERTED SUCCESSFULLY</h3>
<p><input type="button" onclick="window.location.href ='admin_hom.jsp';" value="Home"/></p>
 <%} %>
</div></center>
</body>
</html>