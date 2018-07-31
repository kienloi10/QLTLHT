<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Connect.jsp" %>
<%
    String idFind= request.getParameter("idFind");
    String s ="";
    String sql = "select ID,TENTAILIEU,TENFILE ,LOAITL,TENUSER,GIA from tailieu WHERE id="+idFind;
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {
         s = "{";
        do {
            s += "\"id\":\"" + rs.getString(1) + "\","         
                    + "\"tentailieu\":\"" + rs.getString(2) + "\","
                    + "\"tenfile\":\"" + rs.getString(3) + "\","
                    + "\"loaitl\":\"" + rs.getString(4) + "\","
                    + "\"tenuser\":\"" + rs.getString(5) + "\","
                    + "\"gia\":\"" + rs.getString(6) + "\",";
            
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