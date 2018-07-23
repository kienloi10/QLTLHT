<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%

    String addUsername= request.getParameter("addUsername");
    String addPw= request.getParameter("addPw");
    String addName= request.getParameter("addName");
    
    String sql = "INSERT INTO user(username,password,hoten) VALUES ('"+addUsername+"','"+addPw+"','"+addName+"')";
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>