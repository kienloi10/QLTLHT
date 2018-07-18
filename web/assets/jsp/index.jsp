<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Connect.jsp" %>
<%
    String sql = "select * from loaitailieu";
    String ketQua = "";
    ResultSet rs = stm.executeQuery(sql);
    while(rs.next()){
        String tentl = rs.getString(2);
        ketQua += tentl + ",";
    }
    rs.close();
    out.print(ketQua);
%>

<%@include file="Disconnect.jsp"%>