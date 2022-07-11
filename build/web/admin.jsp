<%-- 
    Document   : admin
    Created on : Mar 3, 2022, 8:30:23 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
		.cart {
  box-shadow: 2px 4px 80px 0 silver;
 width: 600px;
 height: 600px;
  margin: auto;
  text-align: center;
  font-family: arial;
  display: inline-block;
 margin-top:90px;
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

	<script type="text/javascript">
		function verify() {
			frm=true;
			var pass=document.forms["f1"]["password"].value;
			var confpass=document.forms["f1"]["confpassword"].value;
			if(pass != confpass)
			{
				window.alert("Password And Confirm Password must be Same")
				frm=false;
			}
			return frm;
		}
	</script>
    </head>
    <body style="background-color: #bf833b">
        <%@page import="java.sql.*" %>
        <%
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String phone=request.getParameter("mobile");
            String pass=request.getParameter("password");
          
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                PreparedStatement ps = cn.prepareStatement("insert into admin(name,email,mobile,password) values(?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, phone);
                ps.setString(4, pass);
                
                int insert_result = ps.executeUpdate();
                
                if(insert_result > 0 ){
                    out.println("Insert Successfully");
                    response.sendRedirect("adminlogin.jsp");                        
                    
                }
          
            } 
            catch(Exception e)
            {
                 out.println(e);
            }
            
            %>
 
    
 
	 <div class="cart"  >
                  
                  <img src="logo.png" style="width: 150px;padding-top: 35px;padding-right: 10px" >
                  <h2>Register</h2>
                  <form name="f1" class="registernform" action="#" onsubmit="return verify()" method="POST">
                  <table>
                  	<tr>
                  		<td><p >UserName:</p></td>
                                <td><input type="text" name="name"  id="name" required ></td>
                  	</tr>
                  	<tr>
                  		<td> <p >Email:</p></td>
                                <td><input type="Email" name="email" id="email" required ></td>
                  	</tr>
                  	<tr>
                  		<td><p >Mobile:</p></td>
                                <td><input type="text" pattern="^\d{10}$"  id="mobile" name="mobile" required></td>
                  	</tr>
                  	<tr>
                  		<td><p >Password:</p></td>
                                <td><input type="Password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required></td>
                  	</tr>
                  	<tr>
                  		<td><p >Confirm Password:</p></td>
                  		<td><input type="Password" name="confpassword" required></td>
                  	</tr>
                  	<tr>
                  		<td><p ><input  class="btn" type="submit"  id="submit" name="submit" value="Register"></p>
                  		</td>
                  	</tr>
                  </table>
        </form>
	<a href="adminlogin.jsp" class="rlink">If You Have Already Account then Login</a>          
                  
                 
                  
                  
                  
        </div>
    </body>
</html>
