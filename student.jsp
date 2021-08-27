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
String v=request.getParameter("id");
Connection con=null;
PreparedStatement pst = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
	pst = con.prepareStatement("select s.usn, s.name, s.branch from student s where s.usn= ?");
	pst.setString(1,v);
			ResultSet rs=pst.executeQuery();%>
				<h3> USN     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   	-NAME	&nbsp&nbsp&nbsp-BRANCH </h3>
				
				<% while(rs.next())
				{
						String usn=rs.getString("usn");
						String name=rs.getString("name");
						String branch=rs.getString("branch");
						%><p><h3> <%=usn %>&nbsp&nbsp&nbsp<%=name %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=branch %></h3> </p>
						
						
						
				<% }%>
				<p> <input type="Button" value="Back"onclick="history.back()"/></p>
				<p> <input type="button" onclick="window.location.href ='index.html';" value="Home"/></p>
			<% }
			catch(Exception e)
			{
				System.out.println("e="+e);
			}
		
%>
</body>
</html>