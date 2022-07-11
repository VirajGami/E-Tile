<%-- 
    Document   : allproduct
    Created on : Mar 8, 2022, 9:01:05 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <a href="" class="dropbtn">About</a>
               
           
        
        </div>
                
           <%@page import="java.sql.*" %>
         <%

       
            
            
            try{
                String name=request.getParameter("name");
                %>   <h1  style="margin-top: 100px;padding-left: 20px"><%=name%> Tiles</h1><%
                Class.forName("com.mysql.jdbc.Driver");
                  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                 st=cn.createStatement();
               
                
                 PreparedStatement ps=cn.prepareStatement("select *from product where cat=?");
                 ps.setString(1, name);
                 
                  rs=ps.executeQuery();
                  
                
                int i=4;     
                while(rs.next()){
                    if (i>0)
                    {
        String id=rs.getString("id");
        String cat=rs.getString("cat");
        String image = rs.getString("image");
        String dname=rs.getString("dname");
        String soldby=rs.getString("soldby");
        String size=rs.getString("size");
        String shape=rs.getString("shape");
        String app=rs.getString("application");
                    
                    %>
                   
                
              
                    <div class="containerindex" style="margin-left: 50px;margin-top: 50px;">
           <a href="productdetail.jsp?id=<%=id%>&cat=<%=cat%>&image=<%=image%>&dname=<%=dname%>&soldby=<%=soldby%>&size=<%=size%>&shape=<%=shape%>&application=<%=app%>">
            <img  src="/etile<%= image%>" alt="IMAGE NOT FOUND" style="width:100%;height: 60%;"/>          
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
            

          
            }
        
    
      %> 
          
          


        <!-- footer start -->
        <div class="ftr">
          <h4>  Copyright © 2022 All rights reserved. By <a href="#">E-Tile</a><h4></h4>
        </div>

        </body>
</html>