<%-- 
    Document   : admindashboard
    Created on : Mar 3, 2022, 4:35:57 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="admin.css">
<style>
    
    a{
        text-decoration: none;
        color:black;
    }
    </style>


</head>
<body>
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
    <%@page import="java.sql.*" %>
    



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

</script>


<div class="content">
  <div style="box-shadow: 0 4px 8px 0 #bf833b;
height: 100px" onmouseleave="logout1()">
                     <p  id="name" style="color: grey;float: right;padding-right: 50px;margin-bottom: 10px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()">Welcome ,<%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-top: 20px;padding-right: 50px;font-family: cursive;font-size: 30px;cursor: pointer" href="adminlogout.jsp">Logout</a>
  </div>
    <a href="productlist.jsp"><div class="cart" style="margin-left: 20px;margin-top:100px;height: 130px;width: 350px;background-color: white" >
                  <p align="left" style="padding-top: 20px;width: 70%;float: left;font-weight: bold;font-size: 20px">Available Product<br><span style="font-size: 40px;padding-left: 35px;color: grey;font-family: Lucida Handwriting;font-weight: bold;"> 
                      
                      <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");
            
      
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM product";
    ResultSet rs = st.executeQuery(strQuery);

    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      out.println(Countrow);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
       



%>
                      
                      
                      
                      </span></p>
                  <img src="product.png" style="width: 100px;float: right;padding-top: 15px" >
  </div></a>

<a href="userlist.jsp"> <div class="cart" style="margin-left: 20px;margin-top:100px;height: 130px;width: 350px;background-color: white" >
                     <p align="left" style="padding-top: 20px;width: 70%;float: left;font-weight: bold;font-size: 20px">Register  User<br><span style="font-size: 40px;padding-left: 35px;color: grey;font-family: Lucida Handwriting;font-weight: bold;">
                             <%
                                 
                                   
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM user";
    ResultSet rs = st.executeQuery(strQuery);

    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      out.println(Countrow);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
                           %>
                             
                             
                 </span></p>
                  <img src="user1.png" style="width: 60px;float: right;padding-top: 35px;padding-right: 10px" >
         </div></a>
   
                           
                           
                           <a href="adminrequirment.jsp"> <div class="cart" style="margin-left: 20px;margin-top:100px;height: 130px;width: 350px;background-color: white" >
                     <p align="left" style="padding-top: 20px;width: 70%;float: left;font-weight: bold;font-size: 20px">Number Of Requirment<br><span style="font-size: 40px;padding-left: 35px;color: grey;font-family: Lucida Handwriting;font-weight: bold;">
                             <%
                                 
                                   
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM requirment";
    ResultSet rs = st.executeQuery(strQuery);

    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      out.println(Countrow);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
                           %>
                             
                             
                 </span></p>
                  <img src="user1.png" style="width: 60px;float: right;padding-top: 35px;padding-right: 10px" >
                            </div></a>
   
                           
</div>

</body>
</html>

