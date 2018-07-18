package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class upload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/styles.css\">\r\n");
      out.write("    <script src=\"assets/javascript/myscripts.js\"></script>\r\n");
      out.write("<title>Upload page</title>\r\n");
      out.write("<script>\r\n");
      out.write("    function Upload(){\r\n");
      out.write("        \r\n");
      out.write("        var file = document.getElementById(\"file\").value;\r\n");
      out.write("        var arr = file.toString().split(\"\\\\\");\r\n");
      out.write("        var filename = arr[arr.length-1];\r\n");
      out.write("        \r\n");
      out.write("        var tentl = document.getElementById(\"tentl\").value;\r\n");
      out.write("        var loaitl = document.getElementById(\"datatypes\").value;\r\n");
      out.write("        var ngdang = sessionStorage.getItem(\"hoten\");\r\n");
      out.write("        var xmlHttp = new XMLHttpRequest();\r\n");
      out.write("        \r\n");
      out.write("        xmlHttp.open(\"GET\",\"assets/jsp/UpLoad.jsp?filename= \" + filename + \"&tentl=\" + tentl + \"&loaitl=\"  + loaitl + \"&ngdang=\" + ngdang ,false);\r\n");
      out.write("        xmlHttp.send();\r\n");
      out.write("//        var kq = xmlHttp.responseText;\r\n");
      out.write("//        alert(kq);\r\n");
      out.write("       \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"loadLoaiTaiLieu()\" style=\"width: 700px; height: 800px;\">\r\n");
      out.write("\t<form action=\"UploadServlet\" method=\"post\" enctype=\"multipart/form-data\" name=\"form1\" id=\"upload_form\">\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                <div>\r\n");
      out.write("                <p class=\"p_in_form\">File:</p>\r\n");
      out.write("                <input name=\"file\" type=\"file\" id=\"file\" multiple required style=\"background-color: white;\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div>\r\n");
      out.write("                <p class=\"p_in_form\">TÃÂªn tÃÂ i liÃ¡Â»Âu: </p>\r\n");
      out.write("                <input type=\"text\" id=\"tentl\" required> <br>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"margin-bottom: 0px;\">\r\n");
      out.write("                <p class=\"p_in_form\">LoÃ¡ÂºÂ¡i tÃÂ i liÃ¡Â»Âu: </p>\r\n");
      out.write("                <select id=\"datatypes\" style=\"width: 75%; height: 22px; float: right; margin-top: 12px;\" required >    \r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        <input type=\"submit\" value=\"Upload\" onclick=\"Upload()\">\r\n");
      out.write("\r\n");
      out.write("\t</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
