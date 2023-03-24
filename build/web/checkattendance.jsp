<%@page import="java.sql.*"%>
<!Doctype html>
<html>
<head>
<title>
Check Attendance
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
			
			<a href="checknotice.jsp">check notice</a>
                        <a href='logout.jsp'>Log out</a>
</nav>    
    <center>
    <br> 
    <div style="border:1px solid #D40400; height:50px;width:20%;">
<%
        String userId= (String) session.getAttribute("Name");
    out.println("<br/> Roll Number:" + userId);
   //int  student=Integer.parseInt(userId);
 //  student=student/1000;
%>
    </div>
</center>

<h2>Check Attendance...</h2>

<%!
    int a,b,t,percentage;
    int r;
    String name,dept;
    String roll,att;
%>

<%
  
  try {
         Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        Statement st = con.createStatement();
        ResultSet rs=null;
      //  r=Integer.parseInt(userId);
       // out.println(r);
        rs = st.executeQuery("select * from attendancetb where roll="+userId);
        while(rs.next())
        {
          //  staffname=rs.getString(1);
            dept=rs.getString(2);
            roll=rs.getString(5);
            att= rs.getString(6);
        }
           /* a=att;
            t=total;
            percentage=((a/t)*100);*/
             con.close();    
        }
        catch (Exception e) {
        e.printStackTrace();
        }
        
        

     %>
     <%
         int attended=0,total=90;
         try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select  count(*) from attendancetb where att='present' and  roll="+userId);
            if(rs.next())
            {
            attended=Integer.parseInt(rs.getString(1));
            }
            percentage=(int) ((attended/90.0f)*100);
            
            con.close();
            }
         catch (Exception e) {
        e.printStackTrace();
        }   
         
         
         %>
         <%
               try {
         Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        Statement st = con.createStatement();
        ResultSet rs=null;
      //  r=Integer.parseInt(userId);
       // out.println(r);
        rs = st.executeQuery("select * from student where rollno="+userId);
         while(rs.next())
        {
            name=rs.getString(3);
             }
             con.close();
             }
               catch (Exception e) {
        e.printStackTrace();
        }
         %>
<center>
<table>
<tr>
<th>
Roll No.
</th>
<th>
   Student Name
</th>
<th> 
Department
</th>
<th> 
Percentage
</th>
</tr>
<tr>
        <td>
          <%=roll%>
        </td>
        <td>
            <%=name%>
        </td>
        <td>
            <%=dept%>
        </td>
          <td>
          <%=percentage%> %
        </td>
        
</tr>
</table>
</center>

<div class="clear">
</div>
<br/>
<br/>
<!--<center>
<footer >
&copy 
</footer>
</center>-->

</body>
</html>