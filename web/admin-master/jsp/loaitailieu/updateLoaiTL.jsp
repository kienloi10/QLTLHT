<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%
    String a =request.getParameter("id") ;
    int id= Integer.parseInt(a);
    String editNameUser= request.getParameter("editNameUser");
    
    String sql = "UPDATE loaitailieu SET tentailieu = '"+editNameUser+"' WHERE id="+id;
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>