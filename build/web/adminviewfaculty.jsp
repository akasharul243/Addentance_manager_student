<%@page import="java.sql.*"%>
<!Doctype html>
<html>
<head>
<title>
Check
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
			
			<a href="adminfaculty.jsp">home</a>
                        <a href='logout.jsp'>Log out</a>
</nav>    
    <center>
    <br> 
    <div style="border:1px solid #D40400; height:50px;width:20%;">

    </div>
</center>

<h2>View Faculty...</h2>
  
<%
    String faid="", mob="", email="", add="";
   
               String fid=request.getParameter("facultyid");
               try {
         Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        Statement st = con.createStatement();
         
      //  r=Integer.parseInt(userId);
       // out.println(r);
        ResultSet rs = st.executeQuery("select * from facultytb where facultyid="+fid);
         while(rs.next())
        {
             faid=rs.getString(1);
            mob=rs.getString(3);
            email=rs.getString(5);
            add=rs.getString(6);
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
Faculty ID
</th>
<th>
   Mobile number
</th>
<th> 
Email
</th>
<th> 
Address
</th>
</tr>
<tr>
        <td>
          <%=faid%>
        </td>
        <td>
            <%=mob%>
        </td>
        <td>
            <%=email%>
        </td>
          <td>
          <%=add%> 
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