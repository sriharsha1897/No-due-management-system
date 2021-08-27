<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="" rel="stylesheet" id="style">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="index.css" rel="stylesheet" id="style">
</head>
<body>
<%
String usn = request.getParameter("usn");
String name = request.getParameter("name");
String branch= request.getParameter("branch");
int year = Integer.parseInt(request.getParameter("year"));
int fees=Integer.parseInt(request.getParameter("fees"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
PreparedStatement ps=con.prepareStatement("insert into office values(?,?,?,?,?)");
ps.setString(1,usn);
ps.setString(2,name);
ps.setString(3,branch);
ps.setInt(4,year);
ps.setInt(5,fees);
int flag=ps.executeUpdate();
%>

<% if(flag>0){ %>
<h3> VALUES INSERTED SUCCESSFULLY</h3>
<p> <a href="student_insert.html" > Insert Again </a></p>
<p> <input type="button" onclick="window.location.href ='index.html';" value="Home"/></p>
<% } else {%>
<h3> VALUES COULDNT BE INSERTED SUCCESSFULLY</h3>
<p> <a href="index.html" >MAIN INSERT MENU</a></p>

 <%} %>
<center>
<h3>

USN: <%= usn %> <br>
Name :  <%= name %> <br>
Branch : <%= branch %> <br>
Admission_Year : <%= year %> <br>
Fees: <%= fees %> <br>

</h3>
</center>


</body>
</html>