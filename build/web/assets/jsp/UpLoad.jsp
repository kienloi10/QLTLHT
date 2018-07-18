<%--<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String filename = request.getParameter("filename").trim();
    String tentl= request.getParameter("tentl");
    String loaitl= request.getParameter("loaitl");
    
    
    String sql = "insert into tailieu(tentailieu,tenfile,tenloaitailieu) VALUES ('" + tentl +"','"+ filename +"','" + loaitl +"')";
    stm.executeUpdate(sql);
    
//    System.out.println(filename+" "+tentl+ " "+loaitl);
    
 
    //rs.close();
%>

<%@include file="Disconnect.jsp"%>--%>

<%-- 
    Document   : upload
    Created on : Oct 18, 2017, 7:19:31 PM
    Author     : HP
--%>
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
    
    String sql = "insert into tailieu(tentailieu,tenfile,tenloaitailieu,tenngdang) VALUES ('" + tentl + "','"+ filename + "','" + loaitl + "','" + ngdang +"')";
//    String sql = "INSERT INTO tailieu(tentailieu,tenfile,tenloaitailieu,tenngdang) VALUES ('CSS','css.txt','Lap trinh web','An')";
    try{
        stm.executeUpdate(sql);
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    
    
 
    //rs.close();
%>

<%@include file="Disconnect.jsp"%>