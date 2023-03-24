
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> delete faculty</title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" alt="logo" style="float:left; margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%
    String facultyid = request.getParameter("rollno");    

   

    try {
       Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        System.out.println("Connected to the database");
           
    PreparedStatement ps=con.prepareStatement("delete from facultytb where facultyid='"+facultyid +"'");  
    
    ps.executeUpdate();  
       response.sendRedirect("deletestudent.jsp");
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }                
%>
    </body>
</html>
    