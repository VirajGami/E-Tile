
 
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/updateproduct")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class updateproduct extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/etile";
    private String dbUser = "root";
    private String dbPass = "";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
      
          response.setContentType("text/html");
    PrintWriter out = response.getWriter();
            
//            String cat=request.getParameter("cat");
//            Part filePart = request.getPart("img");
//       
             int id=Integer.parseInt(request.getParameter("id"));
            String dname=request.getParameter("dname");
           
            String soldby=request.getParameter("soldby");
            String size=request.getParameter("size");
            String shape=request.getParameter("shape");
            String app=request.getParameter("application");
     
           
            
           
           try{
            // connects to the database
           Class.forName("com.mysql.jdbc.Driver");
           Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
          
           
           
                          
            
                PreparedStatement ps = cn.prepareStatement("update product set  dname=?,soldby=?,size=?,shape=?,application=?  where id=?");
               
                ps.setString(1, dname);
                ps.setString(2, soldby);
                ps.setString(3, size);
                ps.setString(4, shape);
                ps.setString(5, app);
               
                ps.setInt(6, id);
                
                int row = ps.executeUpdate();
                    if (row > 0) {
                      response.sendRedirect("admindashboard.jsp");
                    }    

                
           }
           catch(Exception e)
            {
                System.out.println(e);
            }
    }
}
   

