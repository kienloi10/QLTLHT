<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Connect.jsp" %>
<%
    String kq = "";
 
    String ng = request.getParameter("ng");
    //String ng = "Đổng Kiến Lợi";
    String sql = "SELECT MONEY FROM user WHERE HOTEN ='"+ng+"'";
    ResultSet rs = stm.executeQuery(sql);
    
    
    while(rs.next()){
        kq = rs.getString(1);
    }
    rs.close();
    out.print(kq);
%>

<%@include file="Disconnect.jsp"%>