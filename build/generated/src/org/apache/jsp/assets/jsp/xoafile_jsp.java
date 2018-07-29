package org.apache.jsp.assets.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class xoafile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/assets/jsp/Connect.jsp");
    _jspx_dependants.add("/assets/jsp/Disconnect.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/qltlht?useUnicode=true&characterEncoding=UTF-8","root","");
    Statement stm = con.createStatement();

      out.write('\n');

    String a = request.getParameter("id").trim();
    String id = a.trim(); 
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
        stm.executeUpdate(sql);
        File file = new File(filePath);
        file.delete();
    }catch(Exception e){
        out.print("Lỗi");
        System.out.println(e.toString());
        return;
    }
    out.print("Xóa file thành công");

      out.write('\n');

    stm.close();
    con.close();

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
