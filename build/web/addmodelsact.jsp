<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
            	String id = request.getParameter("id");
                String brands = request.getParameter("brand");
                String model = request.getParameter("model");
                String year = request.getParameter("year");
                String price = request.getParameter("price");
                String to = request.getParameter("turnover");
                String power = request.getParameter("power");
                String cc = request.getParameter("cc");
                String seating = request.getParameter("seating");
                String image = request.getParameter("image");
                String status = request.getParameter("status");
                String vt = request.getParameter("vehicle type");

                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");

                    PreparedStatement ps = con.prepareStatement("INSERT INTO `models`(`id`, `brand`, `model`, `year`, `price`, `turnover`, `power`, `cc`, `seating`, `image`, `status`, `vehicle type`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");

                    ps.setString(1,id);
                    ps.setString(2,brands);
                    ps.setString(3,model);
                    ps.setString(4,year);
                    ps.setString(5,price);
                    ps.setString(6,to);	
                    ps.setString(7,power);
                    ps.setString(8,cc);
                    ps.setString(9,seating);
                    ps.setString(10,image);
                    ps.setString(11,status);
                    ps.setString(12,vt);

                    int x=ps.executeUpdate();
                        if(x > 0) {

                            response.sendRedirect("adminhome.jsp?m2=success");

                        }else {

                            response.sendRedirect("adminhome.jsp?m3=Failed");   

                        }  
                  }catch (Exception e) {
                    out.println(e.getMessage());
                 }
            %>
          