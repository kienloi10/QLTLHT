<%-- 
    Document   : download
    Created on : Oct 13, 2017, 9:00:05 AM
    Author     : Loi
--%>  

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Connect.jsp" %>
<%
    
  String tenTL = request.getParameter("tenTL");
  String tienConLai = request.getParameter("tienConLai");
  String giaTL = request.getParameter("giaTL");
  String ngMua = request.getParameter("ngMua");
  
//  Cong tien
   String tenuser ="";
   String sql2 = "select TENUSER FROM tailieu WHERE tentailieu='"+tenTL+"'";
   ResultSet rs = stm.executeQuery(sql2);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {   
            tenuser = rs.getString(1);
    }
    
    String sql3 = "UPDATE user SET MONEY=MONEY+"+giaTL+" WHERE USERNAME='"+tenuser+"'";
    try{
        stm.executeUpdate(sql3);
        
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    
//    Tru tien
    String sql5  = "SELECT USERNAME FROM user WHERE hoten='"+ngMua+"'";
    ResultSet rs1 = stm.executeQuery(sql5);
    String userNgMua ="";
    if (!rs1.next()) {
        out.print("empty");
        return;
    } else {   
            userNgMua = rs1.getString(1);
    }
    String sql4 ="UPDATE user SET MONEY="+tienConLai+" WHERE USERNAME='"+userNgMua+"'";
    try{
        stm.executeUpdate(sql4);
        
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    
//    So lan dow
    String sql6="UPDATE tailieu SET LAN=LAN + 1 WHERE TENTAILIEU='"+tenTL+"'";
    try{
        stm.executeUpdate(sql6);
        
    }
    catch(Exception ex){
        System.out.println(ex.toString());
    }
    
//    HIển thị link dow
//    String s="";
//    String sql7 = "select TENTAILIEU,TENFILE,LOAITL FROM tailieu WHERE tentailieu='"+tenTL+"'";
//    try{
//        ResultSet rs3 = stm.executeQuery(sql7);
//        
//        if (!rs3.next()) {
//            out.print("empty");
//            return;
//        } else {
//             s = "[";
//            do {
//                s += "{\"tentailieu\":\"" + rs3.getString("tentailieu") + "\","
//                        + "\"tenfile\":\"" + rs3.getString("tenfile") + "\","
//                        + "\"tenloaitailieu\":\"" + rs3.getString("loaitl") + "\"},";
//
//            } while(rs3.next());
//
//            s = s.substring(0, s.length() - 1);
//            s += "]";
//            rs3.close();
//            
//        }
//    }
//        catch(Exception ex){
//        System.out.println(ex.toString());
//    }
//
//    out.print(s);
%>
<%@include file="Disconnect.jsp"%>
