<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String ng = request.getParameter("ng");
    String sql = "SELECT MONEY from user where hoten='"+ng+"'";
    ResultSet rs = stm.executeQuery(sql);
    String kq = "";
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {   
            kq = rs.getString(1);
    } 
   
    out.print(kq);
 
%>

<%@include file="Disconnect.jsp"%>