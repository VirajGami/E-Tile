<%-- 
    Document   : index
    Created on : Mar 5, 2022, 4:28:15 PM
    Author     : dell
--%>

<%@page import="javax.swing.ImageIcon"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
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

        <!-- slider start -->
        <div class="slider">
            <img class="mySlides" src="s1.jpg" width="100%" height="550px">
            <img class="mySlides" src="s2.jpg" width="100%" height="550px">
            <img class="mySlides" src="s3.jpg" width="100%" height="550px">
            <img class="mySlides" src="s4.jpg" width="100%" height="550px">
            <img class="mySlides" src="s5.jpg" width="100%" height="550px">


        </div>
          <script>
            var myIndex = 0;
            carousel();
            
            function carousel() {
              var i;
              var x = document.getElementsByClassName("mySlides");
              for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";  
              }
              myIndex++;
              if (myIndex > x.length) {myIndex = 1}    
              x[myIndex-1].style.display = "block";  
              setTimeout(carousel, 2000); // Change image every 2 seconds
            }
            </script>
          
          <div>
               
              <h3 class="category" style="margin-top: 200px;">Wall Tiles</h3>
         <%

    
    
          
            try{
               
            
               
                Class.forName("com.mysql.jdbc.Driver");
                 cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                 st=cn.createStatement();
                 Blob image = null;

                 rs = st.executeQuery("select * from product where cat='Wall'");
                  
                
                int i=4;     
                while(rs.next()){
                    if (i>0)
                    {
        String id=rs.getString("id");
        String cat=rs.getString("cat");
        String img = rs.getString("image");
        String dname=rs.getString("dname");
        String soldby=rs.getString("soldby");
        String size=rs.getString("size");
        String shape=rs.getString("shape");
        String app=rs.getString("application");
                    
                    %>
                   
              
                    <div class="containerindex" style="margin-left: 50px">
           <a href="productdetail.jsp?id=<%=id%>&cat=<%=cat%>&image=<%=img%>&dname=<%=dname%>&soldby=<%=soldby%>&size=<%=size%>&shape=<%=shape%>&application=<%=app%>">
            <img  src="/etile<%= img%>" alt="IMAGE NOT FOUND" style="width:100%;height: 60%;"/>          
            <h5><%=dname%></h5>
            
            <button class="btn">View Detail</button></a>
        </div>
           
              
          
           
             <%
                 }
                 i--;
            }

            }
               catch(Exception e){
                out.println(e);
            out.println("Unable To Display image");

          
            }
        
    
      %> 
          </div>   
          
          
             <!-- Vitrifies tiles -->
             <div>
                 
               
                <h3 class="category">Vitrified Tiles</h3>
          
            <%

    
    
          
            try{
               
            
               
                Class.forName("com.mysql.jdbc.Driver");
                 cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                 st=cn.createStatement();
                 Blob image = null;

                 rs = st.executeQuery("select * from product where cat='Vitrified'");
                  
                
                int i=4;     
                while(rs.next()){
                    if (i>0)
                    {
        String id=rs.getString("id");
        String cat=rs.getString("cat");
        String img = rs.getString("image");
        String dname=rs.getString("dname");
        String soldby=rs.getString("soldby");
        String size=rs.getString("size");
        String shape=rs.getString("shape");
        String app=rs.getString("application");
                    
                    %>
                   
              
                    <div class="containerindex" style="margin-left: 50px">
           <a href="productdetail.jsp?id=<%=id%>&cat=<%=cat%>&image=<%=img%>&dname=<%=dname%>&soldby=<%=soldby%>&size=<%=size%>&shape=<%=shape%>&application=<%=app%>">
            <img  src="/etile<%= img%>" alt="IMAGE NOT FOUND" style="width:100%;height: 60%;"/>          
            <h5><%=dname%></h5>
            
            <button class="btn">View Detail</button></a>
            
        </div>
           
        
             <%
                 }
                 i--;
            }
            }
               catch(Exception e){
                out.println(e);
            out.println("Unable To Display image");

          
            }
        
    
      %> 
            </div>


             <!-- Porcelain tiles -->
             <div>
               
                <h3 class="category">Porcelain Tiles</h3>
          
           <%

    
    
          
            try{
               
            
               
                Class.forName("com.mysql.jdbc.Driver");
                 cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                 st=cn.createStatement();
                 Blob image = null;

                 rs = st.executeQuery("select * from product where cat='Porcelian'");
                  
                
                int i=4;     
                while(rs.next()){
                    if (i>0)
                    {
        String id=rs.getString("id");
        String cat=rs.getString("cat");
        String img = rs.getString("image");
        String dname=rs.getString("dname");
        String soldby=rs.getString("soldby");
        String size=rs.getString("size");
        String shape=rs.getString("shape");
        String app=rs.getString("application");
                    
                    %>
                   
              
                    <div class="containerindex" style="margin-left: 50px">
           <a href="productdetail.jsp?id=<%=id%>&cat=<%=cat%>&image=<%=img%>&dname=<%=dname%>&soldby=<%=soldby%>&size=<%=size%>&shape=<%=shape%>&application=<%=app%>">
            <img  src="/etile<%= img%>" alt="IMAGE NOT FOUND" style="width:100%;height: 60%;"/>          
            <h5><%=dname%></h5>
            
            <button class="btn">View Detail</button></a>
        </div>
            
        
             <%
                 }
                 i--;
            }
            }
               catch(Exception e){
                out.println(e);
            out.println("Unable To Display image");

          
            }
        
    
      %> 
            
        </div>   




        <!-- footer start -->
        <div class="ftr">
          <h4>  Copyright © 2022 All rights reserved. By <a href="#">E-Tile</a><h4></h4>
        </div>

      </body>
</html>