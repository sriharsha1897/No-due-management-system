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
<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</script>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
<div class="icon-bar">
  <a class="active" href="student_off_due.jsp"><i class="fa fa-home"></i></a> 
  <h3 class="b"><b>Office_Dues</b></h3>
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
				st=con.prepareStatement("select * from office_due where usn=?");
				st.setString(1,usn);
				ResultSet rs=st.executeQuery();
				%>
				<table style="overflow-x:auto;">
				
  <th><b>Student's Office Dues:</b></th>
   <tr>
    <th> USN </th>
    <th> Amount</th> 
    <th> Reason</th>
    <th> Paid </th>
  </tr>
                 <% 
                 int i=0,j=0;
                 while(rs.next())
                   {
                	 i++;
                        String USN=rs.getString("usn");
						int amount=rs.getInt("amount");
						String reason=rs.getString("reason");
						int paid=rs.getInt("paid");
						String pay;
						out.println("<br/>");
						if (paid==0){
							j++;
						pay="Done";}
						else{pay="Pending";}%>
                         <tr>
                         <td><%=USN%></td>
                         <td><%=amount%></td>
                         <td><%=reason%></td>
                         <td><%=pay%></td>
                         </tr>  
                     <% }%>	
                     </table><br><br>			
				<center>	
				<%if(i>j){ %>
				<div class="primary-btn" align="left">
				<p><h2>Student has <%=i-j%> Due Pending</h2></p>
				</div>
				<% } else if(i==0 && j==0){ %>
				<div class="primary-btn" align="left">
				<p><h2>Student has No Records</h2></p>
				</div>
				<%} else if(i==j){%>
				<div class="mansic" align="left">
				<p><h2>Student has No Dues Pending</h2></p>
				</div><% } %>
				</center>
				<br><br><br>
				<center>
				<div class="primary-btn" align="left">
				<p> <input type="Button" value="Back"onclick="history.back()"/>
				<input type="button" onclick="window.location.href ='welcome.jsp';" value="Home"/></p>
				</div></center>
			<% }
			catch(Exception e)
			{
				System.out.println("e="+e);
			}
		
%>
</body>
</html>