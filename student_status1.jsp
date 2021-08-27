<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="icon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
    <script src="../js/ie-emulation-modes-warning.js"></script>
  </head>
  <body>
  <div class="icon-bar">
  <a class="active" href="admin_hom.jsp"><i class="fa fa-home"></i></a> 
  <h3 class="b"><b>Due_Status</b></h3>
  <div class="topnav-right">
  <p><font color="white" face="mv boli"> Hey,<%=session.getAttribute("name")%></font></p>
  <a href="logout.jsp"><i class="fa fa-sign-out"></i></a>
  </div>
  </div>
		<br><br>
		<div align="center">
			<h2>Enter the USN:</h2>
			<form class="form-inline" action="due_status1.jsp" method="post">
				<div class="form-group">
					<input type="text" class="form-control" name="usn" placeholder="USN">
				</div>
				<input type="submit" class="btn btn-primary" value="Search">
			</form>
		</div>
</body>
</html>