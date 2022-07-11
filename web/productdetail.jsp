<%-- 
    Document   : productdetail.jsp
    Created on : Mar 7, 2022, 5:52:42 PM
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


        <div style="border-left: 6px solid #c3863c;
            height: 100px;
            margin-top: 50px;
            position:absolute;
            left: 230px;padding-top: 1px;"></div>
            
            <%
        String t=request.getParameter("id");
        String cat=request.getParameter("cat");
        String image = request.getParameter("image");
        String dname=request.getParameter("dname");
        String soldby=request.getParameter("soldby");
        String size=request.getParameter("size");
        String shape=request.getParameter("shape");
        String app=request.getParameter("application");
    
    %>
        
  <div>
    <p style="padding-left:20px;padding-top:50px;font-size: 30px"><%=dname%></p>
    
    <div class="detailimagediv">
   <img  src="/etile<%= image%>" alt="IMAGE NOT FOUND" style="width:350px;height: 350px;margin-left: 300px"/>   
    </div>
    <div class="detailtablediv">
      <table class="detailtable" >
        <tbody>
          <tr>
            <th  class="detailtablethtd">
              <a class="tableheading">Product Type</a>
            </th>
            <td  class="detailtablethtd">
              <strong><%=cat%></strong>
            </td>
          </tr>
          <tr>
            <th  class="detailtablethtd">
              <a class="tableheading">Sold By</a>
            </th>
            <td  class="detailtablethtd">
              <strong><%=soldby%></strong>
            </td>
          </tr>
          <tr>
            <th  class="detailtablethtd">
              <a class="tableheading">Size</a>
            </th>
            <td  class="detailtablethtd">
              <strong><%=size%></strong>
            </td>
          </tr>
          <tr>
            <th  class="detailtablethtd">
              <a class="tableheading">Shape</a>
            </th>
            <td  class="detailtablethtd">
              <strong><%=shape%></strong>
            </td>
          </tr>
          <tr>
            <th  class="detailtablethtd">
              <a class="tableheading">Product Application</a>
            </th>
            <td  class="detailtablethtd">
              <strong><%=app%></strong>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

 </div>


 <div class="ftr">
          <h4>  Copyright © 2022 All rights reserved. By <a href="index.html">E-Tile</a><h4></h4>
        </div>

</body>
</html>