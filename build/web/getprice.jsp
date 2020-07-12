<%@page import="java.sql.*"%>
<%
  String a = null;
  String b = null;
  ResultSet rs=null;
  try{
    response.setContentType("text/xml");
    response.setHeader("Cache-Control", "no-cache");

    Class.forName("com.mysql.jdbc.Driver");
    Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
    String mobile = request.getParameter("product");
    System.out.println("ddsfjd"+mobile);
    String query1 = "SELECT `price` FROM `models` WHERE `model` ='"+mobile+"'";
    Statement st1 = co.createStatement();
    rs=st1.executeQuery(query1); 

    String cnm="";
    if(rs.next()) {
    
        a = rs.getString("price");
    
        cnm=cnm+rs.getString("price")+":";
  }
    out.write(cnm);
 }catch(Exception e)
  { out.write(e.toString()); }
%>