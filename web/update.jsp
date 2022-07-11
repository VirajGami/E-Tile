  <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" type="text/css" href="admin.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body >
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
    
                      <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");
            %>
    
    <table>
        <tr>
            <td>
                <h1 style="font-family: cursive;font-size: 50px;padding-top: 30px;color: grey">Update Product</h1>
<div style="float: left">
<form style="padding-top: 10px" action="updateproduct.jsp">
    <table>
      
      
      <tr>
        <td>Product ID:</td>
        <td><input type="text" name="id" required></td>
      </tr>
      <tr>
       
      <tr>
        <td colspan="2" ><input type="submit" value="Update Product" class="btn" name="submit"></td>
      </tr>
    </table>
   
  </form>
</div>
                
            </td>
        
            <td>
                <div style="float: right">
<h1 style="font-family: cursive;font-size: 50px;padding-top: 30px;color: grey">Update Product Image </h1>
 
<form style="padding-top: 10px" action="updateimage.jsp">
    <table>
      
      
      <tr>
        <td>Product ID:</td>
        <td><input type="text" name="id" required></td>
      </tr>
      <tr>
       
      <tr>
        <td colspan="2" ><input type="submit" value="Update Product Image" class="btn" name="submit"></td>
      </tr>
    </table>
   
  </form>
</div>
                
            </td>
        </tr>
        <tr>
            <td>
            <div style="float: right">
<h1 style="font-family: cursive;font-size: 50px;padding-top: 30px;color: grey">Update Product Category </h1>
 
<form style="padding-top: 10px" action="updatecategory.jsp">
    <table>
      
      
      <tr>
        <td>Product ID:</td>
        <td><input type="text" name="id" required></td>
      </tr>
      <tr>
       
      <tr>
        <td colspan="2" ><input type="submit" value="Update Product Category" class="btn" name="submit"></td>
      </tr>
    </table>
   
  </form>
</div>
            </td>
        </tr>
    </table>



</div>
        
        
       

</div>
</div>

</body>
</html>
