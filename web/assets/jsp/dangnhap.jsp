<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String kq = username + "," + password;
    System.out.println(kq);
    String sql = "SELECT * FROM user WHERE USERNAME='"+ username + "'AND PASSWORD='" + password +"'";
    ResultSet rs = stm.executeQuery(sql);
    if(rs.next()){
        String hoten = rs.getString(3);
        out.print(hoten);
    }else{
        out.print("false");
    }
    rs.close();
%>
<%@include file="Disconnect.jsp" %>