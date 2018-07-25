<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Connect.jsp" %>
<%
    String s ="";
//    String ngdang = request.getParameter("ngdang");
    String ngdang = "kienloi";
    String sql = "select tentailieu ,tenfile, loaitl from tailieu where tenuser = '" + ngdang +"'" ;
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {
         s = "[";
        do {
            s += "{\"tentailieu\":\"" + rs.getString("tentailieu") + "\","
                    + "\"tenfile\":\"" + rs.getString("tenfile") + "\","
                    + "\"loaitl\":\"" + rs.getString("loaitl") + "\"},";
            
        } while(rs.next());
//        s = s.subSequence(0, s.length() - 1);
        s = s.substring(0, s.length() - 1);
        s += "]";
//        s.trim();
        rs.close();
        out.print(s);
    }
 
    
%>

<%@include file="Disconnect.jsp"%>