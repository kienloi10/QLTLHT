<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Connect.jsp" %>
<%
    String timkiem = request.getParameter("timkiem");
//    String timkiem = "Toan hoc"; 
    String s ="";
    String sql = "SELECT tentailieu,tenfile,tenloaitailieu FROM tailieu WHERE tenloaitailieu = '" + timkiem + "' ";
//    String sql = "SELECT tentailieu,tenfile,tenloaitailieu FROM tailieu WHERE tenloaitailieu = 'Toan hoc' ";
    ResultSet rs = stm.executeQuery(sql);
    if (!rs.next()) {
        out.print("empty");
        return;
    } else {
         s = "[";
        do {
            s += "{\"tentailieu\":\"" + rs.getString("tentailieu") + "\","
                    + "\"tenfile\":\"" + rs.getString("tenfile") + "\","
                    + "\"tenloaitailieu\":\"" + rs.getString("tenloaitailieu") + "\"},";
            
        } while(rs.next());
//        s = s.subSequence(0, s.length() - 1);
        s = s.substring(0, s.length() - 1);
        s += "]";
//        s.trim();
        rs.close();
        out.print(s);
    }
 //   }
// out.print(timkiem);
    
%>

<%@include file="Disconnect.jsp"%>