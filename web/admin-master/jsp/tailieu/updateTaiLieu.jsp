<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%
    String id= request.getParameter("id");
    String tentl= request.getParameter("tentl");
    String tenfile = request.getParameter("tenfile");
    String gia = request.getParameter("gia");

    String sql = "UPDATE tailieu SET TENTAILIEU='"+tentl+"',TENFILE='"+tenfile+"',GIA="+gia+" WHERE id="+id;
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>