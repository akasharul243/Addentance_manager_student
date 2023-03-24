
<%@page import="java.util.Date,java.text.SimpleDateFormat"  %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel=stylesheet href="stylesheet.css" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance... </title>
    </head>
    <body>
        	<div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
			</div>
<nav>
			<a href="faculty.jsp">home</a>
			
			<a href="uploadnotice.jsp">upload notice</a>
			<a href='logout.jsp'>Log out</a>
</nav>    
<h2>Make Attendance Here...</h2>
<form  action="updateattendance.jsp">
<%
    String dept=request.getParameter("s1");
    String t1=request.getParameter("t1");
    String s2=request.getParameter("s2");
    String t2=request.getParameter("t2");
    %>
    <input type="hidden" name="t1" value="<%=t1%>">
    <input type="hidden" name="t2" value="<%=t2%>">
    <input type="hidden" name="s1" value="<%=dept%>">
    <input type="hidden" name="s2" value="<%=s2%>">
    <%
    String list[]= new String[100];
    int Total=0;
    int count=0;
     try{
  
   Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
    Statement st = con.createStatement();
    

%>    
<center>

    
<table >
  
    <tr>
        <th> Roll No</th>
        <th> Name </th>
        <th> Department</th>
        <th>Present/Absent</th>
      
    </tr>
<%
    ResultSet rs = st.executeQuery("select * from student where batch='"+dept +"'");
   int i=0;
    while(rs.next())
    { 
   String rollno=rs.getString(1);
   String name=rs.getString(3);
   String batch=rs.getString(8);
   
   i++;
%>    
    <tr>
        <td>
          <input type="hidden" name="roll[]" value="<%=rollno%>"><%=rollno%>
        </td>
        <td>
          <%=name%>
        </td>
        <td>
          <%=batch%>
        </td>
       
        <td>
          <input type="radio" name="check<%=i%>" value="present" checked>Present <input type="radio" name="check<%=i%>" value="absent">Absent
        </td>
     
    
    </tr>
    
<tr></tr>
    <%
    count++;
    }
    %>
   
   

</table>
<%
     
    con.close();
    }
    catch(SQLException e)
    {
        out.println("error: " + e.getMessage());
        e.getStackTrace();
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
                e.getMessage();
    }
    catch(NullPointerException e)
    {
        e.getMessage();
    }
    %>

        <br/>
<center>
<input type="reset" value="Reset" style="border-top-style: groove; border-radius: 0pt; padding: 5px; margin-right: 60px;  border: 2pt solid #000; color: #000; background-color: #CCC;" >
<input type="submit" value="Submit" style="border-top-style: groove; border-radius: 0pt;  padding: 5px; margin-left: 60px;border: 2pt solid #000; color: #000; background-color: #CCC;">
</center>
</form>
</center>
<div class="clear">
</div>
<br/>
<br/>
<br/>
<center>
<footer >
&copy 
</footer>
</center>

</body>
</html>
