<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%
//    String a =request.getParameter("id") ;
//    int id= Integer.parseInt(a);


    String loaitailieu= request.getParameter("loaitailieu");
    String editNganh= request.getParameter("editNganh");

//    String editUser="truongloc";
//    String editPwUser= "truonglocnguyen";
//    String editName= "Lộc A";
  
    String sql = "UPDATE loaitailieu SET nganh='"+editNganh+"' WHERE loaitailieu='"+loaitailieu+"'";
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>