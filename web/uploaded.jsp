

<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>notice uploaded</title>
    </head>
    <body>
        <div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
        </div>
        <%! 
            String title="";
            String details="";
        %>
        <%
        
        title = request.getParameter("title");
        details = request.getParameter("notice");
        
try
    {
    //Connection con = null;
   Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
    PreparedStatement ps=con.prepareStatement("insert into notice values(?,?)");  
    ps.setString(1,title);  
    ps.setString(2,details);
    
    ps.executeUpdate();  
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
    response.sendRedirect("faculty.jsp");
    %>         
        
    </body>
</html>
