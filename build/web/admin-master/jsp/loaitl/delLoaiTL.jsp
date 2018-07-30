<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>
<%
    String loaitailieu= request.getParameter("loaitailieu");
  
    String sql = "DELETE FROM loaitailieu WHERE loaitailieu= '"+loaitailieu+"'";
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>