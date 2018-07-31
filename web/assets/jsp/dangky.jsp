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
    String sdt = request.getParameter("sdt");


//    String username = "kientai";
//   String password = "123";
//  String name = "Kiến Tài";
//   String email = "kientai@gmail.com";
//   String sdt = "0123";
    
    String insertStm = "INSERT INTO user(USERNAME, PASSWORD, HOTEN,EMAIL,SDT,MONEY) VALUES ('"
                                        + username + "','" + password + "','" + name + "','"+email+"',"+sdt+",0)";
    int count= 0;
    try{
        count = count + stm.executeUpdate(insertStm);
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    out.print(count);
%>
<%@include file="Disconnect.jsp" %>