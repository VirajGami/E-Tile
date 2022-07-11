<%-- 
    Document   : about
    Created on : Mar 16, 2022, 8:39:48 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html> 
<head>
	<title>Home Page</title>
<link rel="stylesheet" href="index.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    

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

        <div>
        <img src="about.jpg" class="aboutimg1" style="height: 500px;padding-top: 50px;float: left;"></div>
        <div style="padding-top: 100px;"><p style="font-size: 25px;font-family: monospace;color: dimgray">In this website we are going to give the information about the tiles in details like 
                which company is manufacturing this tiles. And also you can able to see the tiles of all type design and all 
                the categories of tiles in this site  and if you want to buy the the tiles then you can also send  the requirements
                about the tiles like which category of tileyou reqiure, what design you wan,t which type of Size of tiles you require 
                all this details you can give us After Your Requirment Out Staff Member Will contact with you for better understand and for deal with you.and if you want send requirment of tiles than you have register yourself
                to our site and its mandatory so this way you can able to buy tiles</p></div>



      <div style="float: left" align="center">
      	<h2  class="abouth2" style=" font-size: 35px;padding-left: 250px;text-decoration: underline;" >OUR  CORE VALUE</h2>
      	<img src="vision.png" style=" margin-left: 300px;"class="aboutimg2">

      </div>
      <img src="a1.png" class="aboutimg3" style="width: 100%;" >









        <!-- footer start -->
       
<footer class="ftr" >

  <p>Copyright &copy 2022 All rights reserved. By<a href="" class="ftra">E-Tile </a></p>
</footer>

        
        </body>
</html>