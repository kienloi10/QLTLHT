<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>
<%
    String idFind= request.getParameter("idFind");
    String s ="";
    String sql = "select ID,USERNAME,PASSWORD ,HOTEN from user WHERE id="+idFind;
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {
         s = "{";
        do {
            s += "\"id\":\"" + rs.getInt(1) + "\","
                    + "\"username\":\"" + rs.getString(2) + "\","
                    + "\"password\":\"" + rs.getString(3) + "\","
                    + "\"hoten\":\"" + rs.getString(4) + "\",";
            
        } while(rs.next());
//        s = s.subSequence(0, s.length() - 1);
        s = s.substring(0, s.length() - 1);
        s += "}";
//        s.trim();
        rs.close();
        out.print(s);
    }
%>
<%@include file="../Disconnect.jsp"%>