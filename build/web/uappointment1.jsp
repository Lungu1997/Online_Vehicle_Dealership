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
    String date = request.getParameter("date"); 
    String email = request.getParameter("email"); 
    
   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
   java.util.Date dateStr = formatter.parse(date);
   java.sql.Date dateDB = new java.sql.Date(dateStr.getTime());
      
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
   String sql="INSERT INTO `appointment`(`username`, `brand`, `model`, `year`, `price`, `turnover`, `image`, `date`, `email`) VALUES (?,?,?,?,?,?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username); 
   st.setString(2,brand);
   st.setString(3,model); 
   st.setString(4,year);
   st.setString(5,price);
   st.setString(6,to);
   st.setString(7,image);
   st.setDate(8,dateDB);
   st.setString(9,email);
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("userhome.jsp?msg2=success");
        
    }
   %>