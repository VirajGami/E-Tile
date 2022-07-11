<%-- 
    Document   : adminlogin
    Created on : Mar 3, 2022, 4:28:48 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Register</title>

	<style type="text/css">
		.cart {
  box-shadow: 2px 4px 80px 0 silver;
 width: 600px;
 height: 550px;
  margin: auto;
  text-align: center;
  font-family: arial;
  display: inline-block;
 margin-top:120px;
 margin-left: 450px;
 background-color: white;
}

	p{
		color: black;
	}
	table{
		padding-left: 100px
	}
	input{
		border-top: none;
		border-left: none;
		border-right: none;
		border-color: #bf833b;
		
	}

	.btn {
 position: relative;
 display: inline-block;
margin-left: 100px;
 
 text-align: center;
 width: 100%;
 height:50px;
 font-size: 15px;
 letter-spacing: 1px;
 text-decoration: none;
 color: #bf833b;
 background: transparent;
 cursor: pointer;
 transition: ease-out 0.6s;
 border-radius: 30px;
 border: 2px solid #bf833b;
 border-radius: 10px;
 box-shadow: inset 0 0 0 0 #bf833b;
}

.btn:hover {
 color: white;
 box-shadow: inset 0 -100px 0 0 #bf833b;
}

.btn:active {
 transform: scale(0.9);
}


	</style>

	
</head>



<body style="background-color: #bf833b">
    <%@page import="java.sql.*" %>
<%
    String aname=request.getParameter("name");;
    String pass=request.getParameter("password");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
    Statement st = cn.createStatement();
    ResultSet rs = st.executeQuery("select * from admin where name='" + aname + "' and password='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("name", aname);
            //out.println("welcome " + userid);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("admindashboard.jsp");
        } 
        else{
             response.sendRedirect("login.jsp");
        }
  
    
    %>
   



    
 
                 
                  
                  
                  
     
</body>
</html>