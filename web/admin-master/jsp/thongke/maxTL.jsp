<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>
<%
    String s ="";
    String sql = "select TENTAILIEU,TENUSER,GIA,LAN from TAILIEU ORDER BY LAN DESC";
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {
         s = "[";
        do {
            s += "{\"tentailieu\":\"" + rs.getString(1) + "\","
                    + "\"tenuser\":\"" + rs.getString(2) + "\","
                    + "\"gia\":\"" + rs.getString(3) + "\","
                    + "\"lan\":\"" + rs.getString(4) + "\"},";
            
        } while(rs.next());
//        s = s.subSequence(0, s.length() - 1);
        s = s.substring(0, s.length() - 1);
        s += "]";
//        s.trim();
        rs.close();
        out.print(s);
    }
%>
<%@include file="../Disconnect.jsp"%>