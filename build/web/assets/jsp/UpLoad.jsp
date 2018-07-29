
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String filename = request.getParameter("filename").trim();
    String tentl= request.getParameter("tentl");
    String loaitl= request.getParameter("loaitl");
    String ngdang = request.getParameter("ngdang");

//    String filename = "css.txt";
//    String tentl= "CSS";
//    String loaitl= "Lap trinh web";
    
    String sql = "insert into tailieu(tentailieu,tenfile,loaitl,tenuser) VALUES ('" + tentl + "','"+ filename + "','" + loaitl + "','" + ngdang +"')";

    try{
        stm.executeUpdate(sql);
        
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
 //   out.print(tentl);

       
 
    
%>

<%@include file="Disconnect.jsp"%>