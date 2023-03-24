<!DOCTYPE html >
<html>
<head>
<title>
Faculty Page...
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<div>
	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
</div>

<nav>
			<a href="adminlogin.jsp">admin</a>
			<a href="faculty.jsp">home</a>
			
                        <a href="logout.jsp">Log out</a>
</nav>    
    <h2> Select Department and Time...</h2>
    <form name="ff" id="ff" action="attendance.jsp" method="post">
    
    Staff Name:<input type="text" name="t1" id="t1">&emsp;
    Department:<select name="s1" id="s1"> <option>C.S</option><option>B.A</option><option>B.C.A</option><option>B.Com</option><option>B.B.A</option></select>&emsp;
    Date:<input type="date" name="t2" id="t2">&emsp;
    Period Time:<select name="s2" id="s2"><option>1st Period</option><option>2nd Period</option><option>3rd Period</option><option>4th Period</option><option>5th Period</option></select>
    <br><br>
    <center>
<input type="reset" value="Reset" style="border-top-style: groove; border-radius: 0pt; padding: 5px; margin-right: 60px;  border: 2pt solid #000; color: #000; background-color: #CCC;" >
<input type="submit" value="Submit" style="border-top-style: groove; border-radius: 0pt;  padding: 5px; margin-left: 60px;border: 2pt solid #000; color: #000; background-color: #CCC;">
</center>
    </form>
</body>
</html>