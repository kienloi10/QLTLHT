<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String chude = request.getParameter("chude");
    String noidung = request.getParameter("noidung");
    String ngdang = request.getParameter("ngdang");
    
    String sq2 = "SELECT username from user where hoten='"+ngdang+"'";
    ResultSet rs = stm.executeQuery(sq2);
    String kq = "";
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {   
            kq = rs.getString(1);
    } 

    String sql = "INSERT INTO hopthu (NGDANG,CHUDE,NOIDUNG,DUYET) VALUES('"+kq+"','"+chude+"','"+noidung+"',0)";   
    try{
        stm.executeUpdate(sql);
  
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    out.print(noidung);
 
%>

<%@include file="Disconnect.jsp"%>