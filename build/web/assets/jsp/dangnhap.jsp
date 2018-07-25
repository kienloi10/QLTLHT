<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    String sql = "SELECT PASSWORD,HOTEN FROM user WHERE USERNAME ='"+username+"'";
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("false");
    } else {
            
            String pw = rs.getString(1);
            String name = rs.getString(2);
            if (pw.equals(password))
            {
               out.print(name); 
            }
            else out.print("false");
         }
//        s = s.subSequence(0, s.length() - 1);
        
%>
<%@include file="Disconnect.jsp" %>