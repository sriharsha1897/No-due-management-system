<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="index.css" rel="stylesheet" id="style">
</head>
<body>
<%
String usn = request.getParameter("usn");
String name = request.getParameter("name");
String room_type= request.getParameter("type");
String room_no =request.getParameter("no");
int mess= Integer.parseInt(request.getParameter("mess"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
PreparedStatement ps=con.prepareStatement("insert into mess values(?,?,?,?,?)");
ps.setString(1,usn);
ps.setString(2,name);
ps.setString(3,room_type);
ps.setString(4,room_no);
ps.setInt(5,mess);
int flag=ps.executeUpdate();
%>

<% if(flag>0){ %>
<h3> VALUES INSERTED SUCCESSFULLY</h3>
<p> <a href="mess_insert.html" > Add Again</a></p>
<p> <input type="button" onclick="window.location.href ='index.html';" value="Home"/></p>
<% } else {%>
<h3> VALUES COULDNT BE INSERTED SUCCESSFULLY</h3>
<p> <a href="index.html" >MAIN INSERT MENU</a></p>

 <%} %>
</body>
</html>