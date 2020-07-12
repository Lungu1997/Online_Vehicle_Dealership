<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String username = session.getAttribute("username").toString();
    String to = request.getParameter("turnover");
    String model = request.getParameter("model");
    String year = request.getParameter("year");
    String price= request.getParameter("price");
    String image = request.getParameter("image");
    String brand = request.getParameter("brand"); 
     String fullname = request.getParameter("fullname"); 
     String address = request.getParameter("address"); 
     String zip = request.getParameter("zip"); 
     String state = request.getParameter("state"); 
       String city = request.getParameter("city"); 
        String email = request.getParameter("email");      
         String cardname = request.getParameter("cardname"); 
         String cardnumber = request.getParameter("cardnumber"); 
         String expmonth = request.getParameter("expmonth"); 
         String expyear = request.getParameter("expyear"); 
        String cvv = request.getParameter("cvv");      
        
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
   String sql="INSERT INTO `bookings`(`username`, `brand`, `model`,`year`,`price`, `turnover`, `image`, `fullname`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `cvv`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement st = con.prepareStatement(sql);
   
   st.setString(1,username);
   st.setString(2,brand);
   st.setString(3,model);
   st.setString(4,year);
   st.setString(5,price);
   st.setString(6,to);
   st.setString(7,image);
    st.setString(8,fullname);
     st.setString(9,email);
      st.setString(10,address);
       st.setString(11,city);
        st.setString(12,state);
         st.setString(13,zip);
          st.setString(14,cardname); 
           st.setString(15,cardnumber);
            st.setString(16,expmonth);
             st.setString(17,expyear);          
              st.setString(18,cvv);
                
         
               
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("userhome.jsp?msg1=success");
        
    }
   %>