<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String to = request.getParameter("turnover");
    String model = request.getParameter("model");
    String year = request.getParameter("year");
    String price= request.getParameter("price");
    String image = request.getParameter("image");
    String brand = request.getParameter("brand"); 
    String feedback = request.getParameter("feedback"); 
    
   
      
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
   String sql="INSERT INTO `feedback`(`username`, `brand`, `model`,`year`, `price`, `turnover`, `image`, `feedback`) VALUES (?,?,?,?,?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username);
   st.setString(2,brand);
   st.setString(3,model);
   st.setString(4,year);
   st.setString(5,price);
   st.setString(6,to);
   st.setString(7,image);
   st.setString(8,feedback);
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("ufeedback.jsp?msg=success");
        
    }
   %>