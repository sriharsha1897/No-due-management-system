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
  <a class="active" href="admin_home.jsp"><i class="fa fa-home"></i></a> 
  <a href="#"><i class="fa fa-user"></i></a>
  <h3 class="b"><b>Insertion</b></h3>
  <div class="topnav-right">
  <a href="logout.jsp"><i class="fa fa-sign-out"></i></a>
  </div>
  </div>
<%
try{
String usn = request.getParameter("usn");
String name = request.getParameter("name");
String branch= request.getParameter("branch");
int year = Integer.parseInt(request.getParameter("year"));
String phone=request.getParameter("phone");
String uname = request.getParameter("usn");
String pass = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
ps.setString(1,usn);
ps.setString(2,name);
ps.setString(3,branch);
ps.setInt(4,year);
ps.setString(5,phone);
int flag=ps.executeUpdate();

PreparedStatement pS =con.prepareStatement("insert into login values(?,?,?)");
pS.setString(1,uname);
pS.setString(2,pass);
pS.setTimestamp(3,new java.sql.Timestamp(new java.util.Date().getTime()));                           
pS.executeUpdate();
if(flag>0){
%>
<table style="overflow-x:auto;">
  <th><b>Student_Details:</b></th>
   <tr>
    <th> USN:</th>
    <th> Name:</th> 
    <th> Branch:</th>
    <th> Admission_Year:</th>
    <th> Phone:</th>
    <th> UserName: </th>
    <th> Password: </th>
  </tr>
                         <tr>
                         <td><%= usn %></td>
                         <td><%= name %></td>
                         <td><%= branch %></td>
                         <td><%= year %></td>
                         <td><%= phone %></td>
                         <td><%= uname %></td>
                         <td><%= pass %></td>
                         </tr>  
                     </table>	<br><br>
<center>
        <div class="primary-btn" align="left">
        <h2>Student Record Inserted Sucessfully</h2>
        </div></center>
        <% } else { %><center>
        <div class="primary-btn" align="left">
        <h2>Student Record Could not be Inserted Sucessfully </h2>
        </div><% } }
        catch(Exception e)
{
       out.println(e); 	
}
        %></center>
		<center>
	  <div class="mansic" align="left">
	  <input type="button" onclick="window.location.href ='student_insert.html';" value="Insert_Again"/>
	   </div></center>

<center>
<div class="mansic" align="left">
	  <p> <input type="Button" value="Back"onclick="history.back()"/>
<input type="button" onclick="window.location.href ='index.html';" value="Home"/></p>
</div></center>
</body>
</html>