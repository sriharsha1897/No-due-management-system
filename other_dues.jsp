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
  <a href="student_insrt.jsp"><i class="fa fa-user"></i></a> 
  <a href="admin_u_home.jsp"><i class="fa fa-edit"></i></a>
  <a href="delete.jsp"><i class="fa fa-trash-o"></i></a>
  <h3 class="b"><b>Welcome_Admin</b></h3>
  <div class="topnav-right">
  <p><font color="white" face="mv boli"> Hey,<%=session.getAttribute("name")%></font></p>
   <a href="logout.jsp"><i class="fa fa-user-circle"></i></a>
  </div>
  </div>
  <%
  if(session.getAttribute("name")==null)
  {
	    response.sendRedirect("admin_login.html");
  }
  %>
	<!--Navbar Ends-->
	<br>
	<!--Nav Begins-->
	<div align="center">
		<ul class="nav nav-tabs nav-justified">
		  <li role="presentation"><a href="admin_home.jsp">Mess Due</a></li>
		  <li role="presentation"><a href="office_dues.jsp">Office Due</a></li>
		  <li role="presentation"><a href="library_dues.jsp">Library Due</a></li>
		  <li role="presentation"class="active"><a href="other_dues.jsp">Other Due</a></li></ul>
	</div>
	<!--Nav Ends-->
	<!--Body Starts-->
	<div id="error-div" class="alert alert-danger" role="alert" style="display:none;" align="center">
          <span class="glyphicon glyphicon-exclamation-sign" id="error-glyphicon" aria-hidden="true"></span>
          <span id="error-span"></span>
    </div>
	<div style="margin-top:5%">
		<h2 align="center">Add Any Other Due</h2>
		<form class="form-horizontal" action="other_due.jsp" method="post">
			<div class="form-group">
		    	<label for="inputEmail3" class="col-sm-4 control-label">Roll Number</label>
		    	<div class="col-sm-4">
		     		<input type="text" class="form-control" name="usn" placeholder="USN" required>
		    	</div>
		  	</div>
		  	<div class="form-group">
		    	<label for="inputEmail3" class="col-sm-4 control-label">Amount</label>
		    	<div class="col-sm-4">
		     		<input type="number" step="any" name="amount" class="form-control" id="amount" placeholder="Amount" required>
		    	</div>
		  	</div>
		  	<div class="form-group">
		    	<label for="inputEmail3" class="col-sm-4 control-label">Reason</label>
		    	<div class="col-sm-4">
		     		<textarea class="form-control" name="reason" id="reason" placeholder="Reason" required></textarea>
		    	</div>
		  	</div>
		  	<div class="form-group">
		  		<div class="col-sm-4"></div>
		  		<div class="col-sm-4">
		    		<button type="submit" class="btn btn-primary" name="submit">Add Due</button>
		    	</div>
		  	</div>
		</form>
		<br><br>
		<div align="center">
			<h2>Other Dues.</h2>
			<form class="form-inline" action="admin_other_display.jsp" method="get">
				<div class="form-group">
					<input type="text" class="form-control" name="usn" placeholder="USN">
				</div>
				<input type="submit" class="btn btn-primary" value="Search">
			</form>
		</div>
</div>
</body>
</html>