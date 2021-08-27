<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../img/icon.png">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="signin.css" rel="stylesheet">
    <link href="insert.css" rel="stylesheet" id="style">
<title>login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
%>
<%
String uname=request.getParameter("username");
String upass=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");

String sql = "select * from login where userid=? and password=?";
PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1,uname);
ps.setString(2,upass);

ResultSet rs = ps.executeQuery();

if(rs.next())
{
userdbName = rs.getString("userid");
userdbPsw = rs.getString("password");

if(uname.equals(userdbName) && upass.equals(userdbPsw))
{
session.setAttribute("name",userdbName);

response.sendRedirect("welcome.jsp"); 
} else
{
	response.sendRedirect("error.jsp");
	rs.close();
	ps.close(); 	
}
} // end of if
else
{%>
<center>
<p> USERNAME OR PASSWORD IS INCORRECT </p>
<p> <input type="Button" value="Back" onclick="window.location.href='student_login.html'"/></p>
</center>
<% 
}
%>
</body>
</html>