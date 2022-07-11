<%-- 
    Document   : login
    Created on : Apr 14, 2022, 10:07:38 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
        <link rel="stylesheet" href="index.css">
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
        .uabutton{
  
  border-radius: 22px;
  width: 10%;
  height: 45px;
  background-color: #bf833b;
  color: white;
  font-size: 20px;
  cursor: pointer;
  font-family: monospace;
}

.uabutton:hover{
  background-color: grey;
}
div.role{
  margin-left: 200px;
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

<link rel="stylesheet" href="assets/css/index1.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript">
		function verify() {
			frm=true;
			
			return frm;
		}
	</script>
</head>
<body onload="load()" >
<header class="header-area ">

                    <div class="navbar" >
                          <a href="index.html"><img src="logo.png"  class="logo" width=50%></a>
                          
                          
                            <button type="submit" class="reqbtn"  >
                              <a href="requirment.jsp">
                                ADD YOUR TILE REQUIRMENT
                              </a>
                             </button>
                           <%
  
                               
                               
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) 
    {
            %>
            <a  href="userregister.jsp"><img src="user.png" style="padding-left: 50px;" class="login"></a>
                              <%}
else{        
                              %>
                                  
                              <p  id="name" style="color: grey;float: right;margin-right: 30px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()"><%=session.getAttribute("username")%>
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

        <!-- Form start -->	
  <script type="text/javascript">
    function user() {
  var x = document.getElementById("userfrm");
  var y = document.getElementById("adminfrm");
   x.style.display = "block";
   y.style.display = "none";
   var user=document.getElementById("user");
   user.style.backgroundColor  ="grey";
   var admin=document.getElementById("admin");
   admin.style.backgroundColor  ="#bf833b";
}
    function admin() {
  var x = document.getElementById("userfrm");
  var y = document.getElementById("adminfrm");
   x.style.display = "none";
   y.style.display = "block";
   var admin=document.getElementById("admin");
   admin.style.backgroundColor  ="grey";
   var user=document.getElementById("user");
   user.style.backgroundColor  ="#bf833b";
 }

    function load() {
    var x = document.getElementById("userfrm");
  var y = document.getElementById("adminfrm");
   x.style.display = "none";
   y.style.display = "none";

}

  </script>   

  <div class="role"> 
 <h1>Sign in</h1>
  <h2 class="role">Select Your Role:</h2>

    <button class="uabutton" id="user" onclick="user()" action="userfrm">User</button> 
    <button class="uabutton"  id="admin" onmou onclick="admin()" action="adminfrm">Admin</button> 
    </div>     
    <div id="userfrm">
	<form name="f1"  class="registernform" action="userlogin.jsp" onsubmit="return verify()" method="POST">
   
   

		<table >
			<tr>
				<td><label class="lbl">User Name:</label></td>
				<td><input class="inp" type="text" name="name" minlength="4" required></td>
			</tr>
			<tr>
				<td><label class="lbl">Password:</label></td>
				<td><input class="inp" type="Password" name="password" required></td>
			</tr>
				
			<tr>
				<td><input class="inpsub" type="submit" name="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</div>


<div id="adminfrm">
  <form name="f1"  class="registernform"  action="adminlogin.jsp"  method="POST">
    
                  <table >
                    <tr>
                      <td><label class="lbl">User Name:</label></td>
                      <td><input class="inp" type="text" name="name" required></td>
                    </tr>
                    <tr>
                      <td><label class="lbl">Password:</label></td>
                      <td><input class="inp" type="Password" name="password" required></td>
                    </tr>
                      
                    <tr>
                      <td><input class="inpsub" type="submit" name="submit" value="Login"></td>
                    </tr>
                  </table>
        </form>

</div>

</body>
</html>