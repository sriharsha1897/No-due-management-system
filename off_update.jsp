<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
    <!-- main css -->
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="icon-bar">
  <a class="active" href="admin_u_offdue.jsp"><i class="fa fa-home"></i></a> 
  <h3 class="b"><b>Office_Dues_update</b></h3>
  <div class="topnav-right">
  <p><font color="white" face="mv boli">Welcome,<%=session.getAttribute("name")%></font><br>
  <a href="logout.jsp"><i class="fa fa-sign-out"></i></a>
  </div>
  </div>
<% 
            
    		Connection con=null;
    	    PreparedStatement st = null;
			try
			{
				String usn =request.getParameter("usn");
				Class.forName("com.mysql.jdbc.Driver");
			    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndms","root","");
				st=con.prepareStatement("update office_due set paid='1' where usn=?");
				st.setString(1,usn);
				int flag=st.executeUpdate();
				%>
				<br>  <br>  <br>  <center>
                 <% if(flag>0){ %>
<div class="primary-btn" align="center">
<h3> VALUES UPDATED SUCCESSFULLY</h3><hr>
<p> <input type="button" onclick="window.location.href ='admin_u_offdue.jsp';" value=" Try Again "/>
<input type="button" onclick="window.location.href ='admin_hom.jsp';" value="Home"/></p></div>
<% } else {%>
<div class="primary-btn" align="center">
<h3> VALUES COULDNT BE UPDATED SUCCESSFULLY</h3><hr>
<p> <input type="button" onclick="window.location.href ='admin_u_offdue.jsp';" value=" Try Again "/>
<input type="button" onclick="window.location.href ='admin_hom.jsp';" value="Home"/></p>
</div></center>
 <%}
                 }
			catch(Exception e)
			{
				System.out.println("e="+e);
			}
		
%>
</body>
</html>