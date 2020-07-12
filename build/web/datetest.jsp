<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%

    String[] cars = {"Dodge", "BMW", "Ford", "Chevrolet"};

    String dt = "2019-14-02";  
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Calendar c = Calendar.getInstance();
    c.setTime(sdf.parse(dt));
    c.add(Calendar.DATE, 6); 
    dt = sdf.format(c.getTime()); 
    out.println(dt);

%>