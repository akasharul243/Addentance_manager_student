

<!Doctype html>
<html>
<head>
<title>Delete student
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
<nav>
			<a href="admin.jsp">Admin</a>
			
				<a href="adminstudent.jsp">home</a>
                        <a href="adminlogout.jsp">Logout</a>
</nav>   
<h2>Delete Student</h2>

<br/>
        <div style="margin-left:300px;">
    <fieldset style="box-shadow: 10px 10px 10px #bbb;  border-radius: 10px; width: 30%; height: 100pt;" >
        <legend style="background-color:  #F40000;">Delete Faculty</legend>
<form method="post" action="admindeletestudent.jsp">
    <p> <b>Student Roll No. : </b></p> <input type="text" name="rollno" placeholder="Enter Student Roll no Please">
<center>
<br/>
<br/>
<input type="submit" name="submit" style= "float: right; background-color:#f40000 ; width: 100px;border:1px solid white; border-bottom:3px solid white;  color:white;"> 
</center>
</form>
</fieldset >
</div>

<div class="clear">
</div>
<br/>
<br/>
<br/>
<!--<center>
<footer >
&copy Amandeep Dhiman
</footer>
</center>-->

</body>
</html>