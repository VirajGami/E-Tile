<%-- 
    Document   : userregister
    Created on : Mar 7, 2022, 8:59:37 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" href="index.css">
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
<body>
    <div>
  <header class="header-area ">

                    <div class="navbar" >
                          <a href="index.html"><img src="logo.png"  class="logo" width=50%></a>
                          
                          
                            <button type="submit" class="reqbtn"  >
                              <a href="requirment.jsp">
                                ADD YOUR TILE REQUIRMENT
                              </a>
                             </button>
                           <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
    {
            %>
            <a  href="userregister.jsp"><img src="user.png" style="padding-left: 50px;" class="login"></a>
                              <%}
else{        
                              %>
                                  
                              <p  id="name" style="color: grey;float: right;margin-right: 30px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()"><%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-right: 30px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" href="userlogout.jsp">Logout</a>

                    <%
                    }%>
                    </div>
                    </div>   
                      
    </header>
        
        
         <%@page import="java.sql.*" %>
   
    <%
            Class.forName("com.mysql.jdbc.Driver");
           Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
              Statement st = cn.createStatement();
           ResultSet  rs = st.executeQuery("select * from childcategory ");
           
              
              
        %>   

    
          
       <div class="nav">
          <a href="index.html" class="dropbtn">Home</a>
            <div class="dropdown">
                <button class="dropbtn">Tiles</button>
                <div class="dropdown-content">
                     <%  while(rs.next()){
                          String cat=rs.getString("name");%>
                    
                <a href="allproduct.jsp?name=<%=cat%>"><%= rs.getString("name")%></a>
                 <% } %>
                
                </div>
            </div>
            
      
        
      </select>
            <a href="about.jsp" class="dropbtn">About</a>
               
           
        </div>
<%
            String name=request.getParameter("uname");
            String email=request.getParameter("email");
            String phone=request.getParameter("mobile");
            String pass=request.getParameter("password");
          
            try{
                Class.forName("com.mysql.jdbc.Driver");
                 cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                PreparedStatement ps = cn.prepareStatement("insert into user(name,email,mobile,password) values(?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, phone);
                ps.setString(4, pass);
                
                int insert_result = ps.executeUpdate();
                
                if(insert_result > 0 ){
                    session.setAttribute("name", name);
                    session.setAttribute("email", email);
                    session.setAttribute("phone", phone);
                 
                    out.println("Insert Successfully");
                    response.sendRedirect("login.jsp");                        
                    
                }
          
            } 
            catch(Exception e)
            {
                
            }
            
            %>
        <!-- Form start -->	


	<form name="f1" class="registernform" action="#" onsubmit="return verify()" method="POST">
		<h1>Create Account</h1>
		<table>
			<tr>
				<td><label class="lbl" >User Name:</label></td>
				<td><input class="inp" type="text" name="uname" minlength="4" required></td>
			</tr>
			<tr>
				<td><label class="lbl" >Email:</label></td>
				<td><input class="inp" type="Email" name="email" required></td>
			</tr>
			<tr>
				<td><label class="lbl">Mobile:</label></td>
				<td><input class="inp" type="text" pattern="^\d{10}$"  name="mobile" required></td>
			</tr>
			<tr>
				<td><label class="lbl">Password:</label></td>
				<td><input  class="inp" type="Password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td>
			</tr>
			<tr>
				<td><label class="lbl">Confirm Password:</label></td>
				<td><input class="inp" type="Password" name="confpassword" required></td>
			</tr>	
			<tr >
                            <td colspan="2"><input   class="inpsub" type="submit" name="submit" style="margin-bottom: 15px" value="Register"></td>
				
			</tr>
		
		</table>
	</form>
	<a href="login.jsp" class="rlink" >If You Have Already Account then Login</a>

	<div class="ftr">
          <h4>  Copyright © 2022 All rights reserved. By <a href="#">E-Tile</a><h4></h4>
        </div>
</body>
</html>