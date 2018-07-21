<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>

<%
    String a =request.getParameter("id") ;
    int id= Integer.parseInt(a);
    String editUser= request.getParameter("editUser");
    String editPwUser= request.getParameter("editPwUser");
    String editName = request.getParameter("editName");
    
//    String a = "2";
//    int id = Integer.parseInt(a);
//    String editUser="truongloc";
//    String editPwUser= "truongloc";
//    String editName= "Lộc A";
  
    String sql = "UPDATE user SET username = '"+editUser+"',password='"+editPwUser+"',hoten='"+editName+"' WHERE id="+id;
    stm.executeUpdate(sql);
         
%>

<%@include file="../Disconnect.jsp"%>