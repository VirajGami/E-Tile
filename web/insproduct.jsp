<%-- 
    Document   : insproduct
    Created on : Mar 5, 2022, 11:25:04 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="admin.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
 <div class="sidebar">
  <img src="logo.png"  class="logo" width=90% style="padding-bottom: 30px">
  <a class="active" href="admindashboard.jsp">Dashboard</a>
  <button  class="dropdown-btn">Category 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="addchildcategory.jsp">Add  Category</a>
    <a href="deletechildcategory.jsp">Delate  Category</a>
    
  </div>   
  <a href="insproduct.jsp">Add Product </a>
  <a href="update.jsp">Update Product</a>
  <a href="delete.jsp">Delete Product</a>
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
              document.getElementById("name").style.display = "none";
            }

            function logout1()
            {
              document.getElementById("logout").style.display = "none";
              document.getElementById("name").style.display = "block";
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




<%   if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");
%>


<div class="content" >
   <div style="box-shadow: 0 4px 8px 0 #bf833b;width: 100%;height: 100px" onmouseleave="logout1()">
   <p  id="name" style="color: grey;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()">Welcome ,<%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" href="adminlogout.jsp">Logout</a>

  </div>

<h1 style="font-family: cursive;font-size: 50px;padding-top: 30px;color: grey">ADD Product</h1>


<form style="padding-top: 10px" action="uploadServlet" enctype="multipart/form-data"  method="POST">
        <table
  
    
      
      <tr>
      
     <%
            Class.forName("com.mysql.jdbc.Driver");
           Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
              Statement st = cn.createStatement();
           ResultSet  rs = st.executeQuery("select * from childcategory ");
           
              
              
        %>
        <td>Select  Category:</td>
        <td> <select id ="cat" name="cat"  onchange="jsFunction(this.value);" required>
                <option value=" "></option>
        <%  while(rs.next()){ %>
        <option value="<%= rs.getString("name")%>"><%= rs.getString("name")%></option>
        <% } %>
     
        
      </select></td>
     
      </tr>
      
      <tr>
        <td>Tile/Sanitary Image:</td>
        <td> <input type="file" name="image" required></td>
      </tr>
      <tr>
        <td>Tile/Sanitary Design Name:</td>
        <td><input type="text" name="dname" required></td>
      </tr>
      <tr>
        <td>Sold By:</td>
        <td><input type="text" name="soldby" required></td>
      </tr>
      <tr>
        <td>Size<span style="font-weight: normal;font-size: 12px;">(in mm)</span>:</td>
        <td><input type="text" name="size" required></td>
      </tr>
      <tr>
        <td>Shape:</td>
        <td><input type="text" name="shape" required></td>
      </tr>
      <tr>
        <td>Product Application:</td>
        <td><textarea  name="application" rows="4" cols="50"></textarea></td>
      </tr>
      <tr>
        <td colspan="2" ><input type="submit" value="ADD Product" class="btn" name="submit"></td>
      </tr>
    
        </table>
</form>
  
  
    </body>
</html>
