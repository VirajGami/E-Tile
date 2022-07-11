<%-- 
    Document   : requirment
    Created on : Mar 7, 2022, 9:55:45 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" href="index.css">

       <script>
            function logout()
            {
              document.getElementById("logout").style.display = "block";
              document.getElementById("name").style.display = "none";
            }

            function logout1()
            {
              document.getElementById("logout").style.display = "none";
              document.getElementById("name").style.display = "block";
            }
        </script>    
        <style type="text/css">
		.h2 {
            font-size: 50px;
            font-family: serif;
            color: transparent;
            text-align: left;
            padding-left: 150px;
            animation: effect 0.5s linear infinite;
            
        }
 
        @keyframes effect {
            0% {
                background: linear-gradient(
                        black,black);
                -webkit-background-clip: text;
            }
 
            100% {
                background: linear-gradient(
                        red,red);
                -webkit-background-clip: text;
            }
        }



       
  
       
        
	</style>

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
             
            String name=request.getParameter("name");
            String did=request.getParameter("did");
            String type=request.getParameter("cat");
            String grade=request.getParameter("grade");
            String size=request.getParameter("size");
            String box=request.getParameter("quantity");
          
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                PreparedStatement ps = cn.prepareStatement("insert into requirment(user,DesignID,type,grade,size,box) values(?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, did);
                ps.setString(3, type);
                ps.setString(4, grade);
                ps.setString(5, size);
                ps.setString(6, box);
                
                int insert_result = ps.executeUpdate();
                
                if(insert_result > 0 ){
                    out.println("Insert Successfully");
                    response.sendRedirect("index.jsp");                        
                    
                }
          
            } 
            catch(Exception e)
            {
                
            }
            
            %>
   
   

    
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

        </div>
    <%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) 
    {
            %>
            <script>
                        alert("Please Register Your Self First ");
                       window.location = 'userregister.jsp';
                        </script>
                               <% }

                      %>        
                              
                    
	  

    
        
        <!-- Form start -->	


	<form name="f1" class="registernform" action="#" onsubmit="return verify()" method="POST">
		<p style="font-size: 25px;color: grey;font-family:  Tahoma, Verdana, sans-serif">ADD Your Requirment<p>
		<table>
                    <tr>
                       <td><label class="lbl" >User Name:</label></td>
                       <td><input class="requ" type="text" placeholder="Tile Type" value="<%= session.getAttribute("username") %>" name="name"  required readonly></td>
                </tr>
                        <tr>
				<td><label class="lbl">Design ID:</label></td>
				<td><input class="requ" type="text" placeholder="Design ID"  name="did" required></td>
			</tr>
			<tr>
				<td><label class="lbl" >Tile Type:</label></td>
				 
      
     <%
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
               st = cn.createStatement();
             rs = st.executeQuery("select * from childcategory ");
           
              
              
        %>
       
        <td> <select id ="cat" name="cat"  style="width: 100%;height: 45px;border: 2px solid #bf833b" onchange="jsFunction(this.value);" required>
                <option value=" "></option>
        <%  while(rs.next()){ %>
        <option value="<%= rs.getString("name")%>"><%= rs.getString("name")%></option>
        <% } %>
     
        
      </select></td>
     
      </tr>
			</tr>
			<tr>
				<td><label class="lbl" >Tile Grade:</label></td>
				<td><input class="requ" type="text" placeholder="Tile Grade link FIRST,SECOND" name="grade" required></td>
			</tr>
			<tr>
				<td><label class="lbl">Tile Size in mm:</label></td>
				<td><input class="requ" type="text" placeholder="Tile Size"  name="size" required></td>
			</tr>
			<tr>
				<td><label class="lbl">Quantity in Box:</label></td>
				<td><input class="requ" type="text" placeholder="Quality in Box"   name="quantity" required></td>
			</tr>
			
			<tr >
				<td colspan="2"><input   type="submit" name="submit" value="Add Requirment" style="width: 20%;height: 50px;border: 3px solid #bf833b; margin-left: 755px; padding: 5px;border-radius: 5px;outline: none;color: black;cursor: pointer;"></td>
				
			</tr>
		
		</table>
	</form>
	
                <h2 class="h2">Make a Phone Call For Any Query:<span style="padding-left: 10px">+91 1234567896</span></h2>
		
				
	

	<div class="ftr">
          <h4>  Copyright © 2022 All rights reserved. By <a href="#">E-Tile</a><h4></h4>
        </div>
</body>
</html>