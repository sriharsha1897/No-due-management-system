<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="icon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert here</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
    <!-- main css -->
<link rel="stylesheet" href="css/style.css" />
    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    <link href="admin.css" rel="stylesheet">
</head>
<body>
<div class="icon-bar">
  <a class="active" href="admin_home.jsp"><i class="fa fa-home"></i></a> 
  <h3 class="b"><b>Student_Insert</b></h3>
  <div class="topnav-right">
  <a href="index.html"><i class="fa fa-sign-out"></i></a>
  </div>
  </div>
  <br>
<div class="container">
    <div class="row">
        <div class="col-md-offset-4 col-md-2 text-center">
             <div class="primary-btn2 mb-1 mb-sm-0">
             <form action="student_insert.jsp">
              <center>
                <h2>Student_Details</h2><hr>
                <p> <b> USN:</b><input type="text" name="usn" class="form-control input-sm chat-input" placeholder="" required/> </p>
                <p> <b> Name :</b><input type="text" name="name" class="form-control input-sm chat-input" placeholder="" required/> </p>
                <p> <b> Branch :<select name="branch" class="form-control input-sm chat-input">
                <option value="CSE">CSE</option>
                <option value="ME">ME</option>
				<option value="ECE">ECE</option>
				<option value="EEE">EEE</option>
				<option value="CE">CE</option>
				<option value="IS">IS</option>
				</select> </p>
                <p> <b> Admission_Year :</b><input type="text" name="year" class="form-control input-sm chat-input" pattern="[0-9]{4}" placeholder="" required/> </p>
                <p> <b> Phone :</b><input type="text" name="phone" class="form-control input-sm chat-input" pattern="[0-9]{10}" placeholder="" required/> </p>
                <p> <b> Password:</b><input type="password" name="pass" class="form-control input-sm chat-input" placeholder="" required/> </p>
                <p><input type="submit" value="Submit"/>
                <input type="Button" value="Back"onclick="window.location.href ='admin_home.html';"/></p>
             </center>
             </form>
            </div>
        </div>
    </div>
    </br></br></br>
    <!--footer-->
    <div class="footer text-white text-center">
        <p>© Mr_Mansic. All rights reserved.</p>
    </div>
    <!--//footer-->
</div>
</body>
</html>