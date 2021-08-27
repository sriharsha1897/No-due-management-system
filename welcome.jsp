<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="" rel="stylesheet" id="style">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="icon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="signin.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
    
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
  <a class="active" href="index.html"><i class="fa fa-home"></i></a> 
  <h3 class="b"><b>Welcome_Student</b></h3>
  <div class="topnav-right">
  <p><font color="white" face="mv boli"> Hey,<%=session.getAttribute("name")%></font></p>
  <a href="logout.jsp"><i class="fa fa-sign-out"></i></a></font></p>
  </div>
  </div>
  <br><br><br>
  <%
  if(session.getAttribute("name")==null)
  {
	    response.sendRedirect("student_login.html");
  }
  %>
  
  <center><div class="mansic" align="center"><h2>Select your desired choice</h2><hr>
<input class="primary-btn mb-3 mb-sm-0" type="button" onclick="window.location.href ='student_home.jsp';" value="student_statement"/>
<input class="primary-btn mb-3 mb-sm-0" type="button" onclick="window.location.href ='student_status.jsp';" value="student_status"/>
</div></center>
</body>
</html>