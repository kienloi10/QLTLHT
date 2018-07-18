<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String filename = request.getParameter("filename");
    String filePath = "D://Nam 4/LT web/QLTLHT/web/assets/uploadfile/" + filename;
    String sql = "DELETE FROM tailieu WHERE tenfile='"+ filename +"'";
   
    try{
        stm.executeUpdate(sql);
        File file = new File(filePath);
        file.delete();
    }catch(Exception e){
        out.print("Lỗi");
        System.out.println(e.toString());
        return;
    }
    out.print("Xóa file thành công");
%>
<%@include file="Disconnect.jsp" %>
