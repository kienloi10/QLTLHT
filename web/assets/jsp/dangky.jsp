<%@page import="java.util.concurrent.locks.StampedLock"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = request.getParameter("hoten");
    String email = request.getParameter("email");
    String insertStm = "INSERT INTO user(USERNAME, PASSWORD, HOTEN, EMAIL) VALUES ('"
                                        + username + "','" + password + "','" + name + "','" + email + "')";
    int count= -1;
    try{
        count = stm.executeUpdate(insertStm);
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    out.print(count);
%>
<%@include file="Disconnect.jsp" %>