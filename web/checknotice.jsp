<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<!Doctype html>
<html>
<head>
<title>
Check Notice
</title>
<link rel=stylesheet href="stylesheet.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
    <nav>
			<a href="student.jsp">home</a>
			<a href="checkattendance.jsp">check attendance</a>
			<a href="checknotice.jsp">check notice</a>
                        <a href='logout.jsp'>Log out</a>
</nav>    
<center>
    <br> 
    <div style="border:1px solid #D40400; height:50px;width:20%;">
<%
    out.println("Roll No :");
    String userId= (String) session.getAttribute("userid");
    out.println(userId);
%>
    </div>
</center>
<h2>Check Notice...

</h2>


<%
    
    String title="";
    String details="";
    
    try{
     Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
    Statement st = con.createStatement();
    
    ResultSet rs=null;

    rs = st.executeQuery("select * from notice");
   
%>    

    <center>
<table>
<tr>
<th>
Title
</th>
<th>
Details
</th>

</tr>
<%
    while(rs.next())
    { 
    title=rs.getString(1);
    details=rs.getString(2);
    
%>
<tr>

<td>
    <%=title%>
</td>
<td>
    <%=details%>
</td>

</tr>
<%
    }
    }
    catch(Exception e)
    {
        e.getMessage();
    }
%>
</table>
</center>


<div class="clear">
</div>
<br/>
<br/>
<br/>
<%--<center>
<footer >
&copy 
</footer>
</center>
--%>

</body>
</html>