<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@include file="Connect.jsp" %>
<%
    String id = request.getParameter("id");

    String sql = "SELECT tenfile from tailieu where id="+id;
    ResultSet rs = stm.executeQuery(sql);
    String filename ="";
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {   
            filename = rs.getString(1);
    } 
    
    
    String filePath = "D://Nam 4/QLTLHT/web/assets/uploadfile/" + filename;
    String sql1 = "DELETE FROM tailieu WHERE id="+ id ;
   
    try{
        stm.executeUpdate(sql1);
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
