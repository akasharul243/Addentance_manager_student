
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" alt="logo" style="float:left; margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%
     String facultyid=request.getParameter("facultyid");
     String password=request.getParameter("password");
     String mobile=request.getParameter("mobile");
     String sex=request.getParameter("sex");
     String email=request.getParameter("email");
     String address=request.getParameter("address");


    try {
         Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        System.out.println("Connected to the database");
         PreparedStatement ps=con.prepareStatement("insert into facultytb values(?,?,?,?,?,?)");  
    ps.setString(1,facultyid);  
    ps.setString(2,password);  
    ps.setString(3,mobile);  
    ps.setString(4,sex);
    ps.setString(5,email);
    ps.setString(6,address);
    ps.executeUpdate();  
     response.sendRedirect("addstudent.jsp");
    }
    catch(Exception e)
    {
    out.println("Error: Invalid Details");
    }                
%>
    </body>
</html>
    