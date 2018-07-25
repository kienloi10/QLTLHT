<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%
//    String a =request.getParameter("id") ;
//    int id= Integer.parseInt(a);


    String editUser= request.getParameter("editUser");
    String editPwUser= request.getParameter("editPwUser");
    String editName = request.getParameter("editName");
    

//    String editUser="truongloc";
//    String editPwUser= "truonglocnguyen";
//    String editName= "Lộc A";
  
    String sql = "UPDATE user SET password='"+editPwUser+"',hoten='"+editName+"' WHERE username='"+editUser+"'";
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>