
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String filename = request.getParameter("filename");
    String tentl= request.getParameter("tentl");
    String loaitl= request.getParameter("loaitl");
    String ngdang = request.getParameter("ngdang");

//    String filename = "css.txt";
//    String tentl= "CSS";
//    String loaitl= "Lap trinh web";
    String sql = "SELECT username from user where hoten='"+ngdang+"'";
    ResultSet rs = stm.executeQuery(sql);
    String kq = "";
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {   
            kq = rs.getString(1);
    } 
    String sql1 = "insert into tailieu(tentailieu,tenfile,loaitl,tenuser) VALUES ('" + tentl + "','"+ filename + "','" + loaitl + "','" + kq +"')";
    try{
        stm.executeUpdate(sql1);
        
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    out.print(kq);
 
%>

<%@include file="Disconnect.jsp"%>