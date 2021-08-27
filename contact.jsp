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

<!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
    <!-- main css -->
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th{
  background: #002347;
	color: white;
  text-align: left;
  padding: 8px;
}
td {
  background: white;
	color: black;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
background-color: #f2f2f2;
}
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
  <div class="icon-bar">
  <a class="active" href="index.html"><i class="fa fa-home"></i></a> 
  <h3 class="b"><b>Feedback</b></h3>
  </div>
  </div>
<%
try{
String name = request.getParameter("name");
String email= request.getParameter("email");
String subject=request.getParameter("subject");
String message = request.getParameter("message");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,subject);
ps.setString(4,message);
ps.setTimestamp(5,new java.sql.Timestamp(new java.util.Date().getTime()));  
int flag=ps.executeUpdate();
if(flag>0){
%>
<br><br>
<center>
        <div class="primary-btn" align="left">
        <h2>Feedback Sent Sucessfully</h2>
        </div></center>
        <% } else { %><center>
        <div class="primary-btn" align="left">
        <h2>Feedback Could not be Sent Sucessfully </h2>
        </div><% } }
        catch(Exception e)
{
       out.println(e); 	
}
        %></center>
		<center>
	  <div class="mansic" align="left">
	  <input type="button" onclick="window.location.href ='contact.html';" value="Try_Again"/>
	   </div></center>

<center>
<div class="mansic" align="left">
<input type="button" onclick="window.location.href ='index.html';" value="Home"/></p>
</div></center>
</body>
</html>