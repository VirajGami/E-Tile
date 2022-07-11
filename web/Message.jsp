<%-- 
    Document   : addproduct
    Created on : Mar 4, 2022, 7:16:30 PM
    Author     : dell
--%>
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%> 
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.*"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.Part" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
  <link rel="stylesheet" type="text/css" href="admin.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body >

    
     <%@page import="java.sql.*" %>
     <%
          if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");
          
              
     %>
     
          
        
              
           

 <div class="sidebar">
  <img src="logo.png"  class="logo" width=90% style="padding-bottom: 30px">
  <a class="active" href="#">Dashboard</a>
  <button  class="dropdown-btn">Category 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="addchildcategory.jsp">Add  Category</a>
    <a href="deletechildcategory.jsp">Delate  Category</a>
    
  </div>   
  <a href="insproduct.jsp">Add Product </a>
  <a href="updateproduct.html">Update Product</a>
  <a href="deleteproduct.html">Delete Product</a>
</div>

<script type="text/javascript">

var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}


function logout()
{
  document.getElementById("logout").style.display = "block";
}

function logout1()
{
  document.getElementById("logout").style.display = "none";
}

  function jsFunction(value)
{
  
    if (value == "Tiles")
    {
      document.getElementById("tilesubcat").style.display = "block";
      document.getElementById("sanitarysubcat").style.display = "none";
    }
    if (value == "Sanitary")
    {
      document.getElementById("sanitarysubcat").style.display = "block";
      document.getElementById("tilesubcat").style.display = "none";
    }
    if (value == "none")
    {
      document.getElementById("tilesubcat").style.display = "none";
      document.getElementById("sanitarysubcat").style.display = "none";
    }
}
</script>







<div class="content" >
   <div style="box-shadow: 0 4px 8px 0 #bf833b;width: 100%;height: 100px" onmouseleave="logout1()">
  <p style="color: grey;float: right;padding-right: 50px;padding-top:10px;font-family: cursive;font-size: 20px">Welcome,
    <span style="font-family: Garamond ;" onmouseenter="logout()" ><%=session.getAttribute("name")%></span>

    <a id="logout" style="display: none;margin-left: 250px" href="#Logout">Logout</a> </p>
  </div>




<center>
        <h3><%=request.getAttribute("Message")%></h3>
    </center>
  
  
</div>

</body>
</html>
