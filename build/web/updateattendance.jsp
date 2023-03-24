<%--  5.
    Document   : updateattendance
    Created on : 2 May, 2015, 7:16:48 PM
    Author     : AmanDhiman
--%>
<%@page import="com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Attendance</title>
    </head>
    <body>
    
        <div>
	<h1  > <img src="thapar.jpg" style="float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;">Online Attendance Management System</h1>
</div>
        <%! 
        int k[]= new int[100];
        //String s[]=new String[100];     
        int a,b,c;
        
        %>
    <%
          try{
       
     Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
    //out.println("Connected to the database");
  
        String staffname= request.getParameter("t1");
        String date= request.getParameter("t2");
        String dept= request.getParameter("s1");
        String period= request.getParameter("s2");
        /*out.println("<br> Staff :"  + staffname);
        out.println("<br> Dept :"  + dept);
        out.println("<br> Date :"  + date);
        out.println("<br> Period :"  +  period);*/
        
       String s[] = request.getParameterValues("roll[]");

        for(int i=0;i<s.length;i++)
        {
    out.println("<br/> Roll No. is ==> "+s[i]);
     String  status= request.getParameter("check" + (i+1));
    out.println(" &nbsp;  ==>  " + status);
  
    PreparedStatement ps=con.prepareStatement("insert into attendancetb values(?,?,?,?,?,?)" );
    ps.setString(1,staffname);
    ps.setString(2,dept);
    ps.setString(3,date);
    ps.setString(4,period);
    ps.setString(5,s[i]);
    ps.setString(6,status);
    ps.executeUpdate();

    
          }
   
    
    
    con.close();
    out.println("<script>alert('Stored!')</script>");
    out.println("<script>window.location='addvalues.jsp';</script>");
     //response.sendRedirect("addvalues.jsp");
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
        
    </body>
</html>
