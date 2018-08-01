<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>
<%
    String s ="";
    String sql = "select ID,NGDANG,CHUDE,NOIDUNG,DUYET from hopthu ORDER BY DUYET ASC";
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {
         s = "[";
        do {
            s += "{\"id\":\"" + rs.getString(1) + "\","       
                    + "\"ngdang\":\"" + rs.getString(2) + "\","
                    + "\"chude\":\"" + rs.getString(3) + "\","
                    + "\"noidung\":\"" + rs.getString(4) + "\","
                    + "\"duyet\":\"" + rs.getString(5) + "\"},";
            
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