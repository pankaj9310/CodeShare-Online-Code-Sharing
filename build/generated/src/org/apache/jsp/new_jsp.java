package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class new_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\"><head>\n");
      out.write("  <link href=\"assets/css/bootstrap_1.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <!-- Le fav and touch icons -->\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("      <table class=\"zebra-striped\" id=\"sortTableExample\">\n");
      out.write("        <thead>\n");
      out.write("          <tr>\n");
      out.write("            <th class=\"header\">#</th>\n");
      out.write("            <th class=\"yellow header headerSortUp\">First Name</th>\n");
      out.write("            <th class=\"blue header\">Last Name</th>\n");
      out.write("            <th class=\"green header\">Language</th>\n");
      out.write("          </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>1</td>\n");
      out.write("            <td>Your</td>\n");
      out.write("            <td>One</td>\n");
      out.write("            <td>English</td>\n");
      out.write("          </tr><tr>\n");
      out.write("            <td>3</td>\n");
      out.write("            <td>Stu</td>\n");
      out.write("            <td>Dent</td>\n");
      out.write("            <td>Code</td>\n");
      out.write("          </tr><tr>\n");
      out.write("            <td>2</td>\n");
      out.write("            <td>Joe</td>\n");
      out.write("            <td>Sixpack</td>\n");
      out.write("            <td>English</td>\n");
      out.write("          </tr></tbody>\n");
      out.write("      </table>\n");
      out.write("    <script type=\"text/javascript\" src=\"assets/js/jquery-1.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"assets/js/jquery_1.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"assets/js/application_1.js\"></script>\n");
      out.write("   \n");
      out.write("</body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
