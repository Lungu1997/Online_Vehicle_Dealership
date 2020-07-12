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

                    String sq1 = "UPDATE `models` SET `brand`= ?,`model`= ?,`year`= ?,`price`= ?,`turnover`= ?,`power`= ?,`cc`= ?,`seating`= ?,`image`= ?,`status`= ?,`vehicle type`= ? WHERE `id`= "+id+"";
                    
                    PreparedStatement ps = con.prepareStatement(sq1);

                    ps.setString(1,brands);
                    ps.setString(2,model);
                    ps.setString(3,year);
                    ps.setString(4,price);
                    ps.setString(5,to);	
                    ps.setString(6,power);
                    ps.setString(7,cc);
                    ps.setString(8,seating);
                    ps.setString(9,image);
                    ps.setString(10,status);
                    ps.setString(11,vt);

                    int x=ps.executeUpdate();
                    if(x > 0) {
                        response.sendRedirect("adminhome.jsp?m2=Update successful");
                    }  else {
                        response.sendRedirect("adminhome.jsp?m2=There is a problem with the update");
                    }
                  }catch (Exception e) {
                    out.println(e.getMessage());
                 }
            %>
