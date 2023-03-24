
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
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%
        
    String userid = request.getParameter("id");    
    String pwd = request.getParameter("password");
  
  try {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
      Statement st = con.createStatement ();
       ResultSet rs = st.executeQuery("select * from facultytb where facultyid='" + userid + "' and password='" + pwd + "'");
      if(rs.next())
                {
                 session.setAttribute("userid", userid);
        response.sendRedirect("faculty.jsp");
        }
        else
         response.sendRedirect("facultylogin.jsp");
            con.close();
       
  }
        catch (Exception e)
        {
        e.printStackTrace();
        }      

     %>
    </body>
</html>
