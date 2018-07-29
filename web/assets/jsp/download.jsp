<%-- 
    Document   : download
    Created on : Oct 13, 2017, 9:00:05 AM
    Author     : Loi
--%>  

<%    
//  String filename = request.getParameter("filename");  
////  String filename = "giaitich.docx";
//  String filepath = "d:\\Nam 4\\LT web\\QLTLHT\\web\\assets\\uploadfile\\";   
//  response.setContentType("APPLICATION/OCTET-STREAM");   
//  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
//  
//  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
//            
//  int i;   
//  while ((i=fileInputStream.read()) != -1) {  
//    out.write(i);   
//  }   
//  fileInputStream.close();
//out.print(request.toString());


%>   
<%
  String filename = request.getParameter("filename");
//  String filename = "html.txt";   
  String filepath = "d:\\Nam 4\\QLTLHT\\web\\assets\\uploadfile\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close(); 
//    out.print(request.toString());
%>   