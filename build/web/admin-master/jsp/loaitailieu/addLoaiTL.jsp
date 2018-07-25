<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%

    String addTenTL= request.getParameter("addTenTL");
    String addKNTenTL= request.getParameter("addKNTenTL");
    
    
    String sql = "INSERT INTO loaitailieu(loaitailieu,nganh) VALUES ('"+addTenTL+"','"+addKNTenTL+"')";
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>